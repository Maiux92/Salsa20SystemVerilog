`timescale 1ns / 1ps

module tb_Salsa20ColumnRound();

import pkg_salsa::*;

logic [31:0] tb_x [0:15];
logic [31:0] tb_y [0:15];
logic [31:0] tb_exp [0:15];

logic tb_clk;

// generate clock
always #HALF_CLK_PERIOD tb_clk = ~tb_clk;

initial
begin
    // init values
    tb_clk <= 0;
    
    tb_x = {32'h00000001, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000001, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000001, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000001, 32'h00000000, 32'h00000000, 32'h00000000};
    tb_exp = {32'h10090288, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000101, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00020401, 32'h00000000, 32'h00000000, 32'h00000000, 32'h40a04001, 32'h00000000, 32'h00000000, 32'h00000000};
    
    @(posedge tb_clk);

    assert(tb_y == tb_exp)
        $display("Ok!");
    else
    begin
        $error("Test not passed!");
        $finish;
    end
    
    @(posedge tb_clk);

    tb_x = {32'h08521bd6, 32'h1fe88837, 32'hbb2aa576, 32'h3aa26365, 32'hc54c6a5b, 32'h2fc74c2f, 32'h6dd39cc3, 32'hda0a64f6, 32'h90a2f23d, 32'h067f95a6, 32'h06b35f61, 32'h41e4732e, 32'he859c100, 32'hea4d84b7, 32'h0f619bff, 32'hbc6e965a};
    tb_exp = {32'h8c9d190a, 32'hce8e4c90, 32'h1ef8e9d3, 32'h1326a71a, 32'h90a20123, 32'head3c4f3, 32'h63a091a0, 32'hf0708d69, 32'h789b010c, 32'hd195a681, 32'heb7d5504, 32'ha774135c, 32'h481c2027, 32'h53a8e4b5, 32'h4c1f89c5, 32'h3f78c9c8};

    @(posedge tb_clk);

    assert(tb_y == tb_exp)
        $display("Ok!");
    else
    begin
        $error("Test not passed!");
        $finish;
    end
    
    $display("All test passed!");
    $finish;
end

Salsa20ColumnRound ColumnRound(
     .x(tb_x),
     .y(tb_y)
);

endmodule