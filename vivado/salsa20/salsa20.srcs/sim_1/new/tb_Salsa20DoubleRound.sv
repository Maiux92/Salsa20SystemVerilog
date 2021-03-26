`timescale 1ns / 1ps

module tb_Salsa20DoubleRound();

import pkg_salsa::*;

logic [31:0] tb_x [0:15];
logic [31:0] tb_z [0:15];
logic [31:0] tb_exp [0:15];

logic tb_clk;

// generate clock
always #HALF_CLK_PERIOD tb_clk = ~tb_clk;

initial
begin
    // init values
    tb_clk <= 0;
    
    tb_x = {32'h00000001, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000};
    tb_exp = {32'h8186a22d, 32'h0040a284, 32'h82479210, 32'h06929051, 32'h08000090, 32'h02402200, 32'h00004000, 32'h00800000, 32'h00010200, 32'h20400000, 32'h08008104, 32'h00000000, 32'h20500000, 32'ha0000040, 32'h0008180a, 32'h612a8020};
    
    @(posedge tb_clk)
    
    assert(tb_z == tb_exp)
        $display("Ok!");
    else
    begin
        $error("Test not passed!");
        $finish;
    end
    
    repeat(10) @(posedge tb_clk);
    
    tb_x = {32'hde501066, 32'h6f9eb8f7, 32'he4fbbd9b, 32'h454e3f57, 32'hb75540d3, 32'h43e93a4c, 32'h3a6f2aa0, 32'h726d6b36, 32'h9243f484, 32'h9145d1e8, 32'h4fa9d247, 32'hdc8dee11, 32'h054bf545, 32'h254dd653, 32'hd9421b6d, 32'h67b276c1};
    tb_exp = {32'hccaaf672, 32'h23d960f7, 32'h9153e63a, 32'hcd9a60d0, 32'h50440492, 32'hf07cad19, 32'hae344aa0, 32'hdf4cfdfc, 32'hca531c29, 32'h8e7943db, 32'hac1680cd, 32'hd503ca00, 32'ha74b2ad6, 32'hbc331c5c, 32'h1dda24c7, 32'hee928277};

    @(posedge tb_clk);

    assert(tb_z == tb_exp)
        $display("Ok!");
    else
    begin
        $error("Test not passed!");
        $finish;
    end
    
    $display("All test passed!");
    $finish;
end

Salsa20DoubleRound DoubleRound(
     .x(tb_x),
     .z(tb_z)
);

endmodule