`timescale 1ns / 1ps

module Salsa20(
    input clk,
    input rst,
    input init,
    input start,
    
    input keylength,
    input [7:0] key [0:31],
    input [7:0] nonce [0:7],
    input [7:0] ptx [0:63],
    
    output logic valid,
    output logic ready,
    output logic initialized,
    output logic [7:0] ctx [0:63]
);

localparam STOP = 2'b00;
localparam READY = 2'b01;
localparam BLKDID_UPDATE = 2'b10;

logic [63:0] blkid;
logic [63:0] blkid_next;

logic ready_next;
logic valid_next;
logic initialized_next;

logic [7:0] nonce_reg [0:15];
logic [7:0] key_reg [0:31];
logic keylength_reg;

logic [7:0] ptx_reg [0:63];
logic [7:0] ctx_reg [0:63];

logic [1:0] state;
logic [1:0] state_next;

always @(posedge clk)
begin
    if(rst)
        begin
            state <= STOP;
            initialized <= 0;
            ready <= 0;
            valid <= 0;
            blkid <= 0;
        end
    else
        begin            
            state <= state_next;
            valid <= valid_next;
            initialized <= initialized_next;
            blkid <= blkid_next;
            
            // Output result after the start signal is received
            if(state == READY && state_next == BLKDID_UPDATE)
            begin
                ctx <= ctx_reg;
            end
            
            // start signal -> ready = 0
            if(state == READY && start)
            begin
                ready <= 0;
            end
            else
            begin
                ready <= ready_next;
            end
        end
end

always @(state, init, start)
begin
    state_next = state;
    valid_next = valid;
    ready_next = ready;
    initialized_next = initialized;
    blkid_next = blkid;
    
    case(state)
        STOP:
            begin
                // initialize key, nonce, blkid
                if(init)
                begin
                    key_reg = key;
                    keylength_reg = keylength;
                    nonce_reg[0:7] = nonce[0:7];
                    blkid_next = 0;
                    state_next = READY;
                    
                    initialized_next = 1;
                    ready_next = 1;
                    valid_next = 0;
                end
            end
            
        READY:
            begin
                if(start)
                begin
                    state_next = BLKDID_UPDATE;
                    
                    ready_next = 0;
                    valid_next = 1;
                    
                end
            end
            
        BLKDID_UPDATE:
            begin
                state_next = READY;
                
                ready_next = 1;
                
                blkid_next = blkid + 1'b1;
            end
    endcase
end

always @(blkid)
begin
    nonce_reg[8]  = blkid[63:56];
    nonce_reg[9]  = blkid[55:48];
    nonce_reg[10] = blkid[47:40];
    nonce_reg[11] = blkid[39:32];
    nonce_reg[12] = blkid[31:24];
    nonce_reg[13] = blkid[23:16];
    nonce_reg[14] = blkid[15:8];
    nonce_reg[15] = blkid[7:0];
end

Salsa20Core Salsa20Core(
    .keylength(keylength_reg),
    .ptx(ptx),
    .key(key_reg),
    .nonce(nonce_reg),
    .ctx(ctx_reg)
);

endmodule
