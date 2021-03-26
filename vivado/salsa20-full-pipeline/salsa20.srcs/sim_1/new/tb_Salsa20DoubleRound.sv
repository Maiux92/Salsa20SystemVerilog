`timescale 1ns / 1ps

module tb_Salsa20DoubleRound();

import pkg_salsa::*;

logic [31:0] tb_x0;
logic [31:0] tb_x1;
logic [31:0] tb_x2;
logic [31:0] tb_x3;
logic [31:0] tb_x4;
logic [31:0] tb_x5;
logic [31:0] tb_x6;
logic [31:0] tb_x7;
logic [31:0] tb_x8;
logic [31:0] tb_x9;
logic [31:0] tb_x10;
logic [31:0] tb_x11;
logic [31:0] tb_x12;
logic [31:0] tb_x13;
logic [31:0] tb_x14;
logic [31:0] tb_x15;
logic [31:0] tb_z0;
logic [31:0] tb_z1;
logic [31:0] tb_z2;
logic [31:0] tb_z3;
logic [31:0] tb_z4;
logic [31:0] tb_z5;
logic [31:0] tb_z6;
logic [31:0] tb_z7;
logic [31:0] tb_z8;
logic [31:0] tb_z9;
logic [31:0] tb_z10;
logic [31:0] tb_z11;
logic [31:0] tb_z12;
logic [31:0] tb_z13;
logic [31:0] tb_z14;
logic [31:0] tb_z15;

logic tb_clk;

integer fp;

// generate clock
always #HALF_CLK_PERIOD tb_clk = ~tb_clk;

initial
begin
    // init values
    tb_clk <= 0;
    tb_x0  = 32'h00000001;
    tb_x1  = 32'h00000000;
    tb_x2  = 32'h00000000;
    tb_x3  = 32'h00000000;
    tb_x4  = 32'h00000000;
    tb_x5  = 32'h00000000;
    tb_x6  = 32'h00000000;
    tb_x7  = 32'h00000000;
    tb_x8  = 32'h00000000;
    tb_x9  = 32'h00000000;
    tb_x10 = 32'h00000000;
    tb_x11 = 32'h00000000;
    tb_x12 = 32'h00000000;
    tb_x13 = 32'h00000000;
    tb_x14 = 32'h00000000;
    tb_x15 = 32'h00000000;
    
    fp = $fopen("sim_out.txt", "w+");
    $fwrite(fp, "Salsa20 - DoubleRound functon\n\n");
    
    repeat(10) @(posedge tb_clk);

    $fwrite(fp, "       y: %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h\n", tb_x0, tb_x1, tb_x2, tb_x3, tb_x4, tb_x5, tb_x6, tb_x7, tb_x8, tb_x9, tb_x10, tb_x11, tb_x12, tb_x13, tb_x14, tb_x15);
    $fwrite(fp, "       z: %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h\n", tb_z0, tb_z1, tb_z2, tb_z3, tb_z4, tb_z5, tb_z6, tb_z7, tb_z8, tb_z9, tb_z10, tb_z11, tb_z12, tb_z13, tb_z14, tb_z15);
    $fwrite(fp, "expected: %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h\n\n", 32'h8186a22d, 32'h0040a284, 32'h82479210, 32'h06929051, 32'h08000090, 32'h02402200, 32'h00004000, 32'h00800000, 32'h00010200, 32'h20400000, 32'h08008104, 32'h00000000, 32'h20500000, 32'ha0000040, 32'h0008180a, 32'h612a8020);

    repeat(10) @(posedge tb_clk);
    
    tb_x0 = 32'hde501066;
    tb_x1 = 32'h6f9eb8f7;
    tb_x2 = 32'he4fbbd9b;
    tb_x3 = 32'h454e3f57;
    tb_x4 = 32'hb75540d3;
    tb_x5 = 32'h43e93a4c;
    tb_x6 = 32'h3a6f2aa0;
    tb_x7 = 32'h726d6b36;
    tb_x8 = 32'h9243f484;
    tb_x9 = 32'h9145d1e8;
    tb_x10 = 32'h4fa9d247;
    tb_x11 = 32'hdc8dee11;
    tb_x12 = 32'h054bf545;
    tb_x13 = 32'h254dd653;
    tb_x14 = 32'hd9421b6d;
    tb_x15 = 32'h67b276c1;
    
    repeat(10) @(posedge tb_clk);

    $fwrite(fp, "       y: %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h\n", tb_x0, tb_x1, tb_x2, tb_x3, tb_x4, tb_x5, tb_x6, tb_x7, tb_x8, tb_x9, tb_x10, tb_x11, tb_x12, tb_x13, tb_x14, tb_x15);
    $fwrite(fp, "       z: %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h\n", tb_z0, tb_z1, tb_z2, tb_z3, tb_z4, tb_z5, tb_z6, tb_z7, tb_z8, tb_z9, tb_z10, tb_z11, tb_z12, tb_z13, tb_z14, tb_z15);
    $fwrite(fp, "expected: %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h\n\n", 32'hccaaf672, 32'h23d960f7, 32'h9153e63a, 32'hcd9a60d0, 32'h50440492, 32'hf07cad19, 32'hae344aa0, 32'hdf4cfdfc, 32'hca531c29, 32'h8e7943db, 32'hac1680cd, 32'hd503ca00, 32'ha74b2ad6, 32'hbc331c5c, 32'h1dda24c7, 32'hee928277);

    repeat(10) @(posedge tb_clk);

    $fclose(fp);
    // closes the simulation. Otherwise, it will end when it occupies the entire memory
    $finish;
end

Salsa20DoubleRound DoubleRound(
     .x0(tb_x0), .x1(tb_x1), .x2(tb_x2), .x3(tb_x3), .x4(tb_x4), .x5(tb_x5), .x6(tb_x6), .x7(tb_x7), .x8(tb_x8), .x9(tb_x9), .x10(tb_x10), .x11(tb_x11), .x12(tb_x12), .x13(tb_x13), .x14(tb_x14), .x15(tb_x15),
     .z0(tb_z0), .z1(tb_z1), .z2(tb_z2), .z3(tb_z3), .z4(tb_z4), .z5(tb_z5), .z6(tb_z6), .z7(tb_z7), .z8(tb_z8), .z9(tb_z9), .z10(tb_z10), .z11(tb_z11), .z12(tb_z12), .z13(tb_z13), .z14(tb_z14), .z15(tb_z15)
);

endmodule