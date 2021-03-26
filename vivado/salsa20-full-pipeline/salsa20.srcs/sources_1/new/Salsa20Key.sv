`timescale 1ns / 1ps

module Salsa20Key(
    input keylength,
    input [7:0] nonce [0:15],
    input [7:0] key [0:31],
    output [7:0] salsa20key [0:63]
);

import pkg_salsa::*;

logic [7:0] sigma [0:3][0:3];
logic [7:0] tau [0:3][0:3];

logic [7:0] x [0:63];


generate
    genvar i;
    genvar j;
    
    // Populate matrix with keys
    for(i = 0; i < 16; i++)
    begin:for0
        always @(key[i], key[i+16], keylength)
        begin
            x[i+4]  = key[i];
            
            // keylength = 1 -> 32 byte key
            if(keylength)
            begin
                x[i+44] = key[i+16];
            end
            // keylength = 0 -> 16 byte key
            else
            begin
                x[i+44] = key[i];
            end       
                    
        end
    end:for0
    
    // Populate matrix with nonce
    for(i = 0; i < 16; i++)
    begin:for1
        always @(nonce[i])
        begin
            x[i+24] = nonce[i];
        end
    end:for1
    
    // Initialize sigma/tau constants
    for(i = 0; i < 4; i++)
    begin:for2
        for(j = 0; j < 4; j++)
        begin:for3
            initial
            begin
                tau[i][j]   = TAU[i][j];
                sigma[i][j] = SIGMA[i][j];
            end
        end:for3
    end:for2
    
    // Populate sigma/tau constants
    for(i = 0; i < 4; i++)
    begin:for4
        always @(keylength)
        begin
            // 32 byte key -> sigma
            if(keylength)
            begin
                x[i]    = sigma[0][i];
                x[i+20] = sigma[1][i];
                x[i+40] = sigma[2][i];
                x[i+60] = sigma[3][i];
            end 
            // 16 byte key -> tau
            else
            begin
                x[i]    = tau[0][i];
                x[i+20] = tau[1][i];
                x[i+40] = tau[2][i];
                x[i+60] = tau[3][i];            
            end
        end
    end:for4

endgenerate

Salsa20Hash Salsa20Hash(
    .x(x),
    .z(salsa20key)
);

endmodule

// 32/16 byte keys modules
//
//module Salsa20Key32Byte(
//    input [7:0] n [0:15],
//    input [7:0] k [0:31],
//    output [7:0] z [0:63]
//);

//import pkg_salsa::*;

//logic [7:0] x [0:63];

//generate
//    genvar i;
    
//    // Populate matrix with keys
//    for(i = 0; i < 16; i++)
//    begin:for0
//        always @(k[i], k[i+16])
//        begin
//            x[i+4]  <= k[i];
//            x[i+44] <= k[i+16];
//        end
//    end:for0
    
//    // Populate matrix with nounce
//    for(i = 0; i < 16; i++)
//    begin:for1
//        always @(n[i])
//        begin
//            x[i+24] <= n[i];
//        end
//    end:for1
    
//    // Populate matrix with sigma constants
//    for(i = 0; i < 4; i++)
//    begin:for2
//        initial
//        begin
//            x[i]    = O0[i];
//            x[i+20] = O1[i];
//            x[i+40] = O2[i];
//            x[i+60] = O3[i];
//        end
//    end:for2
    
//endgenerate

//Salsa20Hash Salsa20Hash(
//    .x(x),
//    .z(z)
//);

//endmodule

//module Salsa20Key16Byte(
//    input [7:0] n [0:15],
//    input [7:0] k[0:15],
//    output [7:0] z [0:63]
//);

//import pkg_salsa::*;

//logic [7:0] x [0:63];

//generate
//    genvar i;
    
//    // Populate matrix with keys
//    for(i = 0; i < 16; i++)
//    begin:for0
//        always @(k[i], k[i+16])
//        begin
//            x[i+4]  <= k[i];
//            x[i+44] <= k[i];
//        end
//    end:for0
    
//    // Populate matrix with nounce
//    for(i = 0; i < 16; i++)
//    begin:for1
//        always @(n[i])
//        begin
//            x[i+24] <= n[i];
//        end
//    end:for1
    
//    // Populate matrix with tau constants
//    for(i = 0; i < 4; i++)
//    begin:for2
//        initial
//        begin
//            x[i]    = T0[i];
//            x[i+20] = T1[i];
//            x[i+40] = T2[i];
//            x[i+60] = T3[i];
//        end
//    end:for2
    
//endgenerate

//Salsa20Hash Salsa20Hash(
//    .x(x),
//    .z(z)
//);

//endmodule
