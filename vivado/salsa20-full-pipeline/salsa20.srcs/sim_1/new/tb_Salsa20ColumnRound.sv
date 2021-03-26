`timescale 1ns / 1ps

module tb_Salsa20ColumnRound();

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
    tb_x4  = 32'h00000001;
    tb_x5  = 32'h00000000;
    tb_x6  = 32'h00000000;
    tb_x7  = 32'h00000000;
    tb_x8  = 32'h00000001;
    tb_x9  = 32'h00000000;
    tb_x10 = 32'h00000000;
    tb_x11 = 32'h00000000;
    tb_x12 = 32'h00000001;
    tb_x13 = 32'h00000000;
    tb_x14 = 32'h00000000;
    tb_x15 = 32'h00000000;
    
    fp = $fopen("sim_out.txt", "w+");
    $fwrite(fp, "Salsa20 - ColumnRound functon\n\n");
    
    repeat(10) @(posedge tb_clk);

    $fwrite(fp, "       y: %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h\n", tb_x0, tb_x1, tb_x2, tb_x3, tb_x4, tb_x5, tb_x6, tb_x7, tb_x8, tb_x9, tb_x10, tb_x11, tb_x12, tb_x13, tb_x14, tb_x15);
    $fwrite(fp, "       z: %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h\n", tb_y0, tb_y1, tb_y2, tb_y3, tb_y4, tb_y5, tb_y6, tb_y7, tb_y8, tb_y9, tb_y10, tb_y11, tb_y12, tb_y13, tb_y14, tb_y15);
    $fwrite(fp, "expected: %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h\n\n", 32'h10090288, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000101, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00020401, 32'h00000000, 32'h00000000, 32'h00000000, 32'h40a04001, 32'h00000000, 32'h00000000, 32'h00000000);

    repeat(10) @(posedge tb_clk);
    
    tb_x0  = 32'h08521bd6;
    tb_x1  = 32'h1fe88837;
    tb_x2  = 32'hbb2aa576;
    tb_x3  = 32'h3aa26365;
    tb_x4  = 32'hc54c6a5b;
    tb_x5  = 32'h2fc74c2f;
    tb_x6  = 32'h6dd39cc3;
    tb_x7  = 32'hda0a64f6;
    tb_x8  = 32'h90a2f23d;
    tb_x9  = 32'h067f95a6;
    tb_x10 = 32'h06b35f61;
    tb_x11 = 32'h41e4732e;
    tb_x12 = 32'he859c100;
    tb_x13 = 32'hea4d84b7;
    tb_x14 = 32'h0f619bff;
    tb_x15 = 32'hbc6e965a;
    
    repeat(10) @(posedge tb_clk);

    $fwrite(fp, "       y: %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h\n", tb_x0, tb_x1, tb_x2, tb_x3, tb_x4, tb_x5, tb_x6, tb_x7, tb_x8, tb_x9, tb_x10, tb_x11, tb_x12, tb_x13, tb_x14, tb_x15);
    $fwrite(fp, "       z: %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h\n", tb_y0, tb_y1, tb_y2, tb_y3, tb_y4, tb_y5, tb_y6, tb_y7, tb_y8, tb_y9, tb_y10, tb_y11, tb_y12, tb_y13, tb_y14, tb_y15);
    $fwrite(fp, "expected: %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h\n\n", 32'h8c9d190a, 32'hce8e4c90, 32'h1ef8e9d3, 32'h1326a71a, 32'h90a20123, 32'head3c4f3, 32'h63a091a0, 32'hf0708d69, 32'h789b010c, 32'hd195a681, 32'heb7d5504, 32'ha774135c, 32'h481c2027, 32'h53a8e4b5, 32'h4c1f89c5, 32'h3f78c9c8);

    repeat(10) @(posedge tb_clk);

    $fclose(fp);
    // closes the simulation. Otherwise, it will end when it occupies the entire memory
    $finish;
end

Salsa20ColumnRound ColumnRound(
     .x0(tb_x0), .x1(tb_x1), .x2(tb_x2), .x3(tb_x3), .x4(tb_x4), .x5(tb_x5), .x6(tb_x6), .x7(tb_x7), .x8(tb_x8), .x9(tb_x9), .x10(tb_x10), .x11(tb_x11), .x12(tb_x12), .x13(tb_x13), .x14(tb_x14), .x15(tb_x15),
     .y0(tb_y0), .y1(tb_y1), .y2(tb_y2), .y3(tb_y3), .y4(tb_y4), .y5(tb_y5), .y6(tb_y6), .y7(tb_y7), .y8(tb_y8), .y9(tb_y9), .y10(tb_y10), .y11(tb_y11), .y12(tb_y12), .y13(tb_y13), .y14(tb_y14), .y15(tb_y15)
);

endmodule