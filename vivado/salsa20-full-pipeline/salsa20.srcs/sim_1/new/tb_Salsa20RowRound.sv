`timescale 1ns / 1ps

module tb_Salsa20RowRound();

import pkg_salsa::*;

logic [31:0] tb_y0;
logic [31:0] tb_y1;
logic [31:0] tb_y2;
logic [31:0] tb_y3;
logic [31:0] tb_y4;
logic [31:0] tb_y5;
logic [31:0] tb_y6;
logic [31:0] tb_y7;
logic [31:0] tb_y8;
logic [31:0] tb_y9;
logic [31:0] tb_y10;
logic [31:0] tb_y11;
logic [31:0] tb_y12;
logic [31:0] tb_y13;
logic [31:0] tb_y14;
logic [31:0] tb_y15;
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
    tb_y0  = 32'h00000001;
    tb_y1  = 32'h00000000;
    tb_y2  = 32'h00000000;
    tb_y3  = 32'h00000000;
    tb_y4  = 32'h00000001;
    tb_y5  = 32'h00000000;
    tb_y6  = 32'h00000000;
    tb_y7  = 32'h00000000;
    tb_y8  = 32'h00000001;
    tb_y9  = 32'h00000000;
    tb_y10 = 32'h00000000;
    tb_y11 = 32'h00000000;
    tb_y12 = 32'h00000001;
    tb_y13 = 32'h00000000;
    tb_y14 = 32'h00000000;
    tb_y15 = 32'h00000000;
    
    fp = $fopen("sim_out.txt", "w+");
    $fwrite(fp, "Salsa20 - RowRound functon\n\n");
    
    repeat(10) @(posedge tb_clk);

    $fwrite(fp, "       y: %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h\n", tb_y0, tb_y1, tb_y2, tb_y3, tb_y4, tb_y5, tb_y6, tb_y7, tb_y8, tb_y9, tb_y10, tb_y11, tb_y12, tb_y13, tb_y14, tb_y15);
    $fwrite(fp, "       z: %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h\n", tb_z0, tb_z1, tb_z2, tb_z3, tb_z4, tb_z5, tb_z6, tb_z7, tb_z8, tb_z9, tb_z10, tb_z11, tb_z12, tb_z13, tb_z14, tb_z15);
    $fwrite(fp, "expected: %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h\n\n", 32'h08008145, 32'h00000080, 32'h00010200, 32'h20500000, 32'h20100001, 32'h00048044, 32'h00000080, 32'h00010000, 32'h00000001, 32'h00002000, 32'h80040000, 32'h00000000, 32'h00000001, 32'h00000200, 32'h00402000, 32'h88000100);

    repeat(10) @(posedge tb_clk);
    
    tb_y0  = 32'h08521bd6;
    tb_y1  = 32'h1fe88837;
    tb_y2  = 32'hbb2aa576;
    tb_y3  = 32'h3aa26365;
    tb_y4  = 32'hc54c6a5b;
    tb_y5  = 32'h2fc74c2f;
    tb_y6  = 32'h6dd39cc3;
    tb_y7  = 32'hda0a64f6;
    tb_y8  = 32'h90a2f23d;
    tb_y9  = 32'h067f95a6;
    tb_y10 = 32'h06b35f61;
    tb_y11 = 32'h41e4732e;
    tb_y12 = 32'he859c100;
    tb_y13 = 32'hea4d84b7;
    tb_y14 = 32'h0f619bff;
    tb_y15 = 32'hbc6e965a;
    
    repeat(10) @(posedge tb_clk);

    $fwrite(fp, "       y: %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h\n", tb_y0, tb_y1, tb_y2, tb_y3, tb_y4, tb_y5, tb_y6, tb_y7, tb_y8, tb_y9, tb_y10, tb_y11, tb_y12, tb_y13, tb_y14, tb_y15);
    $fwrite(fp, "       z: %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h\n", tb_z0, tb_z1, tb_z2, tb_z3, tb_z4, tb_z5, tb_z6, tb_z7, tb_z8, tb_z9, tb_z10, tb_z11, tb_z12, tb_z13, tb_z14, tb_z15);
    $fwrite(fp, "expected: %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h\n\n", 32'ha890d39d, 32'h65d71596, 32'he9487daa, 32'hc8ca6a86, 32'h949d2192, 32'h764b7754, 32'he408d9b9, 32'h7a41b4d1, 32'h3402e183, 32'h3c3af432, 32'h50669f96, 32'hd89ef0a8, 32'h0040ede5, 32'hb545fbce, 32'hd257ed4f, 32'h1818882d);

    repeat(10) @(posedge tb_clk);

    $fclose(fp);
    // closes the simulation. Otherwise, it will end when it occupies the entire memory
    $finish;
end

Salsa20RowRound RowRound(
     .y0(tb_y0), .y1(tb_y1), .y2(tb_y2), .y3(tb_y3), .y4(tb_y4), .y5(tb_y5), .y6(tb_y6), .y7(tb_y7), .y8(tb_y8), .y9(tb_y9), .y10(tb_y10), .y11(tb_y11), .y12(tb_y12), .y13(tb_y13), .y14(tb_y14), .y15(tb_y15),
     .z0(tb_z0), .z1(tb_z1), .z2(tb_z2), .z3(tb_z3), .z4(tb_z4), .z5(tb_z5), .z6(tb_z6), .z7(tb_z7), .z8(tb_z8), .z9(tb_z9), .z10(tb_z10), .z11(tb_z11), .z12(tb_z12), .z13(tb_z13), .z14(tb_z14), .z15(tb_z15)
);

endmodule