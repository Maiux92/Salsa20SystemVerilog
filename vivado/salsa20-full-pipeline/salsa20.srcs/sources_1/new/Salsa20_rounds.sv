`timescale 1ns / 1ps

module Salsa20QuarterRound(
    input [31:0] y0,
    input [31:0] y1,
    input [31:0] y2,
    input [31:0] y3,
    output [31:0] z0,
    output [31:0] z1,
    output [31:0] z2,
    output [31:0] z3
);

logic [31:0] tmp_z0;
logic [31:0] tmp_z1;
logic [31:0] tmp_z2;
logic [31:0] tmp_z3;


assign z0 = tmp_z0;
assign z1 = tmp_z1;
assign z2 = tmp_z2;
assign z3 = tmp_z3;

always @(y0, y1, y2, y3)
begin
   logic [31:0] pre_z0;
   logic [31:0] pre_z1;
   logic [31:0] pre_z2;
   logic [31:0] pre_z3;
   
   pre_z1 = y0 + y3;
   // pre_z1 <<< 7
   tmp_z1 = y1 ^ {pre_z1[24:0], pre_z1[31:25]};
   
   pre_z2 = tmp_z1 + y0;
   // pre_z2 <<< 9
   tmp_z2 = y2 ^ {pre_z2[22:0], pre_z2[31:23]};

   pre_z3 = tmp_z2 + tmp_z1;
   // pre_z3 <<< 13
   tmp_z3 = y3 ^ {pre_z3[18:0], pre_z3[31:19]};

   pre_z0 = tmp_z3 + tmp_z2;
   // pre_z0 <<< 18
   tmp_z0 = y0 ^ {pre_z0[13:0], pre_z0[31:14]};
end

endmodule

module Salsa20RowRound(
    input [31:0] y0,
    input [31:0] y1,
    input [31:0] y2,
    input [31:0] y3,
    input [31:0] y4,
    input [31:0] y5,
    input [31:0] y6,
    input [31:0] y7,
    input [31:0] y8,
    input [31:0] y9,
    input [31:0] y10,
    input [31:0] y11,
    input [31:0] y12,
    input [31:0] y13,
    input [31:0] y14,
    input [31:0] y15,
    output [31:0] z0,
    output [31:0] z1,
    output [31:0] z2,
    output [31:0] z3,
    output [31:0] z4,
    output [31:0] z5,
    output [31:0] z6,
    output [31:0] z7,
    output [31:0] z8,
    output [31:0] z9,
    output [31:0] z10,
    output [31:0] z11,
    output [31:0] z12,
    output [31:0] z13,
    output [31:0] z14,
    output [31:0] z15
);

Salsa20QuarterRound QuarterRound0(
    .y0(y0), .y1(y1), .y2(y2), .y3(y3),
    .z0(z0), .z1(z1), .z2(z2), .z3(z3)
);

Salsa20QuarterRound QuarterRound1(
    .y0(y5), .y1(y6), .y2(y7), .y3(y4),
    .z0(z5), .z1(z6), .z2(z7), .z3(z4)
);

Salsa20QuarterRound QuarterRound2(
    .y0(y10), .y1(y11), .y2(y8), .y3(y9),
    .z0(z10), .z1(z11), .z2(z8), .z3(z9)
);

Salsa20QuarterRound QuarterRound3(
    .y0(y15), .y1(y12), .y2(y13), .y3(y14),
    .z0(z15), .z1(z12), .z2(z13), .z3(z14)
);

endmodule


module Salsa20ColumnRound(
    input [31:0] x0,
    input [31:0] x1,
    input [31:0] x2,
    input [31:0] x3,
    input [31:0] x4,
    input [31:0] x5,
    input [31:0] x6,
    input [31:0] x7,
    input [31:0] x8,
    input [31:0] x9,
    input [31:0] x10,
    input [31:0] x11,
    input [31:0] x12,
    input [31:0] x13,
    input [31:0] x14,
    input [31:0] x15,
    output [31:0] y0,
    output [31:0] y1,
    output [31:0] y2,
    output [31:0] y3,
    output [31:0] y4,
    output [31:0] y5,
    output [31:0] y6,
    output [31:0] y7,
    output [31:0] y8,
    output [31:0] y9,
    output [31:0] y10,
    output [31:0] y11,
    output [31:0] y12,
    output [31:0] y13,
    output [31:0] y14,
    output [31:0] y15
);

Salsa20QuarterRound QuarterRound0(
    .y0(x0), .y1(x4), .y2(x8), .y3(x12),
    .z0(y0), .z1(y4), .z2(y8), .z3(y12)
);

Salsa20QuarterRound QuarterRound1(
    .y0(x5), .y1(x9), .y2(x13), .y3(x1),
    .z0(y5), .z1(y9), .z2(y13), .z3(y1)
);

Salsa20QuarterRound QuarterRound2(
    .y0(x10), .y1(x14), .y2(x2), .y3(x6),
    .z0(y10), .z1(y14), .z2(y2), .z3(y6)
);

Salsa20QuarterRound QuarterRound3(
    .y0(x15), .y1(x3), .y2(x7), .y3(x11),
    .z0(y15), .z1(y3), .z2(y7), .z3(y11)
);

endmodule

module Salsa20DoubleRound(
    input [31:0] x0,
    input [31:0] x1,
    input [31:0] x2,
    input [31:0] x3,
    input [31:0] x4,
    input [31:0] x5,
    input [31:0] x6,
    input [31:0] x7,
    input [31:0] x8,
    input [31:0] x9,
    input [31:0] x10,
    input [31:0] x11,
    input [31:0] x12,
    input [31:0] x13,
    input [31:0] x14,
    input [31:0] x15,
    output [31:0] z0,
    output [31:0] z1,
    output [31:0] z2,
    output [31:0] z3,
    output [31:0] z4,
    output [31:0] z5,
    output [31:0] z6,
    output [31:0] z7,
    output [31:0] z8,
    output [31:0] z9,
    output [31:0] z10,
    output [31:0] z11,
    output [31:0] z12,
    output [31:0] z13,
    output [31:0] z14,
    output [31:0] z15
);

logic [31:0] y0;
logic [31:0] y1;
logic [31:0] y2;
logic [31:0] y3;
logic [31:0] y4;
logic [31:0] y5;
logic [31:0] y6;
logic [31:0] y7;
logic [31:0] y8;
logic [31:0] y9;
logic [31:0] y10;
logic [31:0] y11;
logic [31:0] y12;
logic [31:0] y13;
logic [31:0] y14;
logic [31:0] y15;

Salsa20ColumnRound ColumnRound(
    .x0(x0), .x1(x1), .x2(x2), .x3(x3), .x4(x4), .x5(x5), .x6(x6), .x7(x7), .x8(x8), .x9(x9), .x10(x10), .x11(x11), .x12(x12), .x13(x13), .x14(x14), .x15(x15),
    .y0(y0), .y1(y1), .y2(y2), .y3(y3), .y4(y4), .y5(y5), .y6(y6), .y7(y7), .y8(y8), .y9(y9), .y10(y10), .y11(y11), .y12(y12), .y13(y13), .y14(y14), .y15(y15)
);

Salsa20RowRound RowRound0(
    .y0(y0), .y1(y1), .y2(y2), .y3(y3), .y4(y4), .y5(y5), .y6(y6), .y7(y7), .y8(y8), .y9(y9), .y10(y10), .y11(y11), .y12(y12), .y13(y13), .y14(y14), .y15(y15),
    .z0(z0), .z1(z1), .z2(z2), .z3(z3), .z4(z4), .z5(z5), .z6(z6), .z7(z7), .z8(z8), .z9(z9), .z10(z10), .z11(z11), .z12(z12), .z13(z13), .z14(z14), .z15(z15)
);

endmodule