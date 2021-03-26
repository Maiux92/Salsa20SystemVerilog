`timescale 1ns / 1ps

module Salsa20DoubleKeys(
    input clk,
    input rst,
    input init,

    input [3:0] rounds,
    
    input keylength,
    input [255:0] key,
    input [63:0] nonce,
    
    input next_chunk,
    
    output logic initialized,
    output logic ready,
    output logic valid,
    output logic [63:0] chunk_key
);

// Salsa20Key signals
logic [63:0] blkid;
logic key_valid;
logic key_start;
logic [7:0] salsa20key [0:63];

// FSM states
localparam NOT_INITIALIZED = 2'b00;
localparam KEY_GEN_START   = 2'b01;
localparam KEY_GEN         = 2'b10;
localparam KEY_READY       = 2'b11;

// FSM data
logic [1:0] state;

// keys data
logic [7:0][63:0] keys_chunks [0:1];
logic [1:0] n_key_ready;
logic [3:0] current_key_chunk_id;
logic gen_key_id;

initial
begin
    state = NOT_INITIALIZED;
    n_key_ready = 0;
    gen_key_id = 0;
    current_key_chunk_id = 4'd0;
    ready = 0;
    valid = 0;
    key_start = 0;
    blkid = 0;
    initialized = 0;
end

always @(posedge clk)
begin
    if(rst) begin
        state <= NOT_INITIALIZED;
        n_key_ready <= 0;
        gen_key_id <= 0;
        current_key_chunk_id <= 4'd0;
        ready <= 0;
        valid <= 0;
        key_start <= 0;
        blkid <= 0;
        initialized <= 0;
    end
    else begin
        case(state)
            NOT_INITIALIZED:
            begin
                if(init) begin
                    state <= KEY_GEN_START;
                    key_start <= 1;
                    initialized <= 1;
                end
            end
            
            KEY_GEN_START:
            begin
                state <= KEY_GEN;
                key_start <= 0;
                
                if(n_key_ready == 0)
                    ready <= 0;
            end
            
            KEY_GEN:
            begin
                if(n_key_ready == 0)
                    ready <= 0;
                    
                if(key_valid)
                begin
                    ready <= 1;
                    gen_key_id <= gen_key_id + 1;
                    n_key_ready <= n_key_ready + 1;
                    
                    if(n_key_ready == 1)
                        state <= KEY_READY;
                    else
                    begin
                        state <= KEY_GEN_START;
                        key_start <= 1;
                    end
                end
            end
            
            KEY_READY:
            begin
                if(n_key_ready < 2)
                begin
                    state <= KEY_GEN_START;
                    key_start <= 1;
                end
            end
            
        endcase

        if(next_chunk)
        begin
            if(n_key_ready == 0)
                valid <= 0;
            else
            begin
                chunk_key <= keys_chunks[current_key_chunk_id[3]][current_key_chunk_id[2:0]];
                valid <= 1;
                
                if(current_key_chunk_id[2:0] == 7)
                begin
                    // if key ready -> overwrite KEY_GEN n_key_ready + 1 with n_key_ready
                    // otherwise, decrement n_key_ready
                    if(state == KEY_GEN && key_valid)
                        n_key_ready <= n_key_ready;
                    else
                        n_key_ready <= n_key_ready - 1;
                    
                    current_key_chunk_id <= current_key_chunk_id + 1;
                end
                else
                    current_key_chunk_id <= current_key_chunk_id + 1;

            end
        end        
    end
end

always @(posedge key_valid)
begin
    blkid = blkid + 1;
end

// update key chunks
generate
    genvar i;
    
    for(i = 0; i < 8; i++)
    begin:for_key_update
        always @(posedge key_valid)
        begin
            keys_chunks[gen_key_id][i] = {
                salsa20key[i*8],
                salsa20key[i*8+1],
                salsa20key[i*8+2],
                salsa20key[i*8+3],
                salsa20key[i*8+4],
                salsa20key[i*8+5],
                salsa20key[i*8+6],
                salsa20key[i*8+7]
            };
        end
    end:for_key_update
endgenerate

Salsa20Key Salsa20Key(
    .clk(clk),
    .rst(rst),
    .start(key_start),
    .rounds(rounds),
    .keylength(keylength),
    .key(key),
    .nonce(nonce),
    .blkid(blkid),
    .valid(key_valid),
    .salsa20key(salsa20key)
);

endmodule
