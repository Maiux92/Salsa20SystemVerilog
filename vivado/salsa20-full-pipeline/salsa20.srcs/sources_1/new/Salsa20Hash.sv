`timescale 1ns / 1ps

module Salsa20Hash(
    input [7:0] x [0:63],
    output logic [7:0] z [0:63]
);

import pkg_salsa::*;

// littleendian
logic [31:0] x_little [0:175];

generate
    genvar i;

    // from 1 byte to 4 byte
    for(i = 0; i < 16; i++)
    begin:for0
        always @(x[i*4+3], x[i*4+2], x[i*4+1], x[i*4])
        begin
            x_little[i] = {x[i*4+3], x[i*4+2], x[i*4+1], x[i*4]};
        end
    end:for0
    
    // apply doubleround() rounds
    for(i = 0; i < SALSA_ROUNDS/2; i++)
    begin:for1
    
        Salsa20DoubleRound doubleround(
            .x0(x_little[i*16]),
            .x1(x_little[i*16+1]),
            .x2(x_little[i*16+2]),
            .x3(x_little[i*16+3]),
            .x4(x_little[i*16+4]),
            .x5(x_little[i*16+5]),
            .x6(x_little[i*16+6]),
            .x7(x_little[i*16+7]),
            .x8(x_little[i*16+8]),
            .x9(x_little[i*16+9]),
            .x10(x_little[i*16+10]),
            .x11(x_little[i*16+11]),
            .x12(x_little[i*16+12]),
            .x13(x_little[i*16+13]),
            .x14(x_little[i*16+14]),
            .x15(x_little[i*16+15]),
            
            .z0(x_little[(i+1)*16]),
            .z1(x_little[(i+1)*16+1]),
            .z2(x_little[(i+1)*16+2]),
            .z3(x_little[(i+1)*16+3]),
            .z4(x_little[(i+1)*16+4]),
            .z5(x_little[(i+1)*16+5]),
            .z6(x_little[(i+1)*16+6]),
            .z7(x_little[(i+1)*16+7]),
            .z8(x_little[(i+1)*16+8]),
            .z9(x_little[(i+1)*16+9]),
            .z10(x_little[(i+1)*16+10]),
            .z11(x_little[(i+1)*16+11]),
            .z12(x_little[(i+1)*16+12]),
            .z13(x_little[(i+1)*16+13]),
            .z14(x_little[(i+1)*16+14]),
            .z15(x_little[(i+1)*16+15])
        );
        
    end:for1
    
    // from 4 bytes to 1 byte
    for(i = 0; i < 16; i++)
    begin:for2
        always @(x_little[16*(SALSA_ROUNDS/2)+i])
        begin
            {>>{z[i*4+3], z[i*4+2], z[i*4+1], z[i*4]}} = x_little[16*(SALSA_ROUNDS/2)+i] + x_little[i];
        end
    end:for2
    
endgenerate
endmodule

// OLD littleendian modules
// Directly integrated in the above module
//
//module Salsa20LittleEndian(
//    input [7:0] b0,
//    input [7:0] b1,
//    input [7:0] b2,
//    input [7:0] b3,
//    output logic [31:0] b
//);

//always @(b0, b1, b2, b3)
//begin
//    //b[7:0]   <= b0;
//    //b[15:8]  <= b1;
//    //b[23:16] <= b2;
//    //b[31:24] <= b3;
//    b <= {b3, b2, b1, b0};
//end

//endmodule

//module Salsa20LittleEndianReverse(
//    input [31:0] b,
//    output logic [7:0] b0,
//    output logic [7:0] b1,
//    output logic [7:0] b2,
//    output logic [7:0] b3
//);

//always @(b)
//begin
//    //b0 <= b[7:0];
//    //b1 <= b[15:8];
//    //b2 <= b[23:16];
//    //b3 <= b[31:24];
//    {>>{b3, b2, b1, b0}} <= b;
//end

//endmodule