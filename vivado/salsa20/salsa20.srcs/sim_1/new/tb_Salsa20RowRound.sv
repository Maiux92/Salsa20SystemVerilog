`timescale 1ns / 1ps

module tb_Salsa20RowRound();

import pkg_salsa::*;

logic [31:0] tb_y [0:15];
logic [31:0] tb_z [0:15];
logic [31:0] tb_exp [0:15];

logic tb_clk;

// generate clock
always #HALF_CLK_PERIOD tb_clk = ~tb_clk;

initial
begin
    // init values
    tb_clk <= 0;
    
    tb_y = {32'h00000001, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000001, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000001, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000001, 32'h00000000, 32'h00000000, 32'h00000000};
    tb_exp = {32'h08008145, 32'h00000080, 32'h00010200, 32'h20500000, 32'h20100001, 32'h00048044, 32'h00000080, 32'h00010000, 32'h00000001, 32'h00002000, 32'h80040000, 32'h00000000, 32'h00000001, 32'h00000200, 32'h00402000, 32'h88000100};
    
    @(posedge tb_clk);

    assert(tb_z == tb_exp)
        $display("Ok!");
    else
    begin
        $error("Test not passed!");
        $finish;
    end
    
    @(posedge tb_clk);
    
    tb_y = {32'h08521bd6, 32'h1fe88837, 32'hbb2aa576, 32'h3aa26365, 32'hc54c6a5b, 32'h2fc74c2f, 32'h6dd39cc3, 32'hda0a64f6, 32'h90a2f23d, 32'h067f95a6, 32'h06b35f61, 32'h41e4732e, 32'he859c100, 32'hea4d84b7, 32'h0f619bff, 32'hbc6e965a};
    tb_exp = {32'ha890d39d, 32'h65d71596, 32'he9487daa, 32'hc8ca6a86, 32'h949d2192, 32'h764b7754, 32'he408d9b9, 32'h7a41b4d1, 32'h3402e183, 32'h3c3af432, 32'h50669f96, 32'hd89ef0a8, 32'h0040ede5, 32'hb545fbce, 32'hd257ed4f, 32'h1818882d};

    @(posedge tb_clk);

    assert(tb_z == tb_exp)
        $display("Ok!");
    else
    begin
        $error("Test not passed!");
        $finish;
    end
    
    @(posedge tb_clk);
    
    $display("All test passed!");
    $finish;
end

Salsa20RowRound RowRound(
     .y(tb_y),
     .z(tb_z)
);

endmodule