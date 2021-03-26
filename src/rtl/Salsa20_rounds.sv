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
    input  [31:0] y [0:15],
    output [31:0] z [0:15]
);

Salsa20QuarterRound QuarterRound0(
    .y0(y[0]), .y1(y[1]), .y2(y[2]), .y3(y[3]),
    .z0(z[0]), .z1(z[1]), .z2(z[2]), .z3(z[3])
);

Salsa20QuarterRound QuarterRound1(
    .y0(y[5]), .y1(y[6]), .y2(y[7]), .y3(y[4]),
    .z0(z[5]), .z1(z[6]), .z2(z[7]), .z3(z[4])
);

Salsa20QuarterRound QuarterRound2(
    .y0(y[10]), .y1(y[11]), .y2(y[8]), .y3(y[9]),
    .z0(z[10]), .z1(z[11]), .z2(z[8]), .z3(z[9])
);

Salsa20QuarterRound QuarterRound3(
    .y0(y[15]), .y1(y[12]), .y2(y[13]), .y3(y[14]),
    .z0(z[15]), .z1(z[12]), .z2(z[13]), .z3(z[14])
);

endmodule


module Salsa20ColumnRound(
    input  [31:0] x [0:15],
    output [31:0] y [0:15]
);

Salsa20QuarterRound QuarterRound0(
    .y0(x[0]), .y1(x[4]), .y2(x[8]), .y3(x[12]),
    .z0(y[0]), .z1(y[4]), .z2(y[8]), .z3(y[12])
);

Salsa20QuarterRound QuarterRound1(
    .y0(x[5]), .y1(x[9]), .y2(x[13]), .y3(x[1]),
    .z0(y[5]), .z1(y[9]), .z2(y[13]), .z3(y[1])
);

Salsa20QuarterRound QuarterRound2(
    .y0(x[10]), .y1(x[14]), .y2(x[2]), .y3(x[6]),
    .z0(y[10]), .z1(y[14]), .z2(y[2]), .z3(y[6])
);

Salsa20QuarterRound QuarterRound3(
    .y0(x[15]), .y1(x[3]), .y2(x[7]), .y3(x[11]),
    .z0(y[15]), .z1(y[3]), .z2(y[7]), .z3(y[11])
);

endmodule


module Salsa20DoubleRound(
    input  [31:0] x [0:15],
    output [31:0] z [0:15]
);

logic [31:0] y [0:15];

Salsa20ColumnRound ColumnRound(
    .x(x),
    .y(y)
);

Salsa20RowRound RowRound0(
    .y(y),
    .z(z)
);

endmodule