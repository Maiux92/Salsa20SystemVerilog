`timescale 1ns / 1ps

module Salsa20(
    input clk,
    input rst,
    
    input init,
    
    input data_encdec,
    input write_enable,

    input [2:0] address,
    input [63:0] in,

    output logic valid,
    output logic ready,
    output logic initialized,
    output logic [63:0] out    
);

// Salsa20 setup registers
logic [255:0] key_reg;
logic [63:0] nonce_reg;
logic keylength_reg;
logic [3:0] rounds_reg;
logic key_valid;

// Salsa20DoubleKeys data
logic [63:0] chunk_key;

// Addresses
localparam ADDR_KEY0 = 3'd0;
localparam ADDR_KEY1 = 3'd1;
localparam ADDR_KEY2 = 3'd2;
localparam ADDR_KEY3 = 3'd3;
localparam ADDR_NONCE = 3'd4;
localparam ADDR_SETUP = 3'd5;

initial
begin
    valid = 0;
end

// Update setup registers (posedge clock triggered)
always @(posedge clk)
begin

    if(write_enable && !initialized)
    begin
        case(address)
            ADDR_KEY0:
            begin
                key_reg[255 -: 64] = in;
            end
            
            ADDR_KEY1:
            begin
                key_reg[191 -: 64] = in;
            end
                
            ADDR_KEY2:
            begin
                key_reg[127 -: 64] = in;
            end
                
            ADDR_KEY3:
            begin
                key_reg[63 -: 64] = in;
            end
            
            ADDR_NONCE:
            begin
                nonce_reg = in;
            end
                
            ADDR_SETUP:
            begin
                keylength_reg = in[0];
                rounds_reg = in[5:1];
            end

        endcase
    end
    
    if(data_encdec)
    begin
        if(!ready || !key_valid)
            valid <= 0;
        else if(key_valid)
        begin
            out <= in ^ chunk_key;
            valid <= 1;
        end            
    end
end

Salsa20DoubleKeys Salsa20DoubleKeys(
    .clk(clk),
    .rst(rst),
    .init(init),
    .rounds(rounds_reg),
    .keylength(keylength_reg),
    .key(key_reg),
    .nonce(nonce_reg),
    .next_chunk(data_encdec),
    .initialized(initialized),
    .ready(ready),
    .valid(key_valid),
    .chunk_key(chunk_key)
);

endmodule
