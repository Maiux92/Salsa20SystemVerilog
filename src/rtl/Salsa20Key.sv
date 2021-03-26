`timescale 1ns / 1ps

module Salsa20Key(
    input clk,
    input rst,
    input start,
    
    input [3:0] rounds,
    
    input keylength,
    input [255:0] key,
    input [63:0] nonce,
    input [63:0] blkid,

    output valid,
    output [7:0] salsa20key [0:63]
);

import pkg_salsa::*;

logic [7:0] x [0:63];

generate
    genvar i;
    
    // Populate matrix with keys
    for(i = 0; i < 16; i++)
    begin:forkey0
        always @(*)
        begin
            x[i+4] <= key[255-i*8 -: 8];
        end
    end:forkey0
    
    // Populate matrix with keys
    for(i = 0; i < 16; i++)
    begin:forkey1
        always @(*)
        begin
            // Keylength = 1 -> 32 bytes key
            // Keylength = 0 -> 16 bytes key (repeat first 16 bytes)
            x[i+44] = keylength ? key[127-i*8 -: 8] : key[255-i*8 -: 8];
        end
    end:forkey1
                    
    
    // Populate matrix with nonce
    for(i = 0; i < 8; i++)
    begin:fornonce
        always @(posedge clk)
        begin
            x[i+24] = nonce[63-i*8 -: 8];
            x[i+32] = blkid[63-i*8 -: 8];
        end
    end:fornonce
    
    // Populate sigma/tau constants
    for(i = 0; i < 4; i++)
    begin:forconstants
        always @(posedge clk)
        begin
            // 32 byte key -> sigma
            // 16 byte key -> tau
            x[i]    = keylength ? SIGMA[0][i] : TAU[0][i];
            x[i+20] = keylength ? SIGMA[1][i] : TAU[1][i];
            x[i+40] = keylength ? SIGMA[2][i] : TAU[2][i];
            x[i+60] = keylength ? SIGMA[3][i] : TAU[3][i];
        end
    end:forconstants

endgenerate

Salsa20Hash Salsa20Hash(
    .clk(clk),
    .rst(rst),
    .start(start),
    .rounds(rounds),
    .x(x),
    .valid(valid),
    .z(salsa20key)
);

endmodule
