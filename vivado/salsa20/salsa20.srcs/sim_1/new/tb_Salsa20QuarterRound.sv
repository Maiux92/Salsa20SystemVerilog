`timescale 1ns / 1ps


module tb_Salsa20QuarterRound();

import pkg_salsa::*;

logic [31:0] tb_y [0:3];
logic [31:0] tb_z [0:3];
logic [31:0] tb_exp [0:3];

logic tb_clk;

// generate clock
always #HALF_CLK_PERIOD tb_clk = ~tb_clk;

initial
begin
    // init values
    tb_clk <= 0;
    tb_y = {32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000};
    tb_exp = {32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000};

    @(posedge tb_clk);
    
    assert(tb_z == tb_exp)
        $display("Ok!");
    else
    begin
        $error("Test not passed!");
        $finish;
    end
    
    @(posedge tb_clk);
    
    tb_y = {32'h00000001, 32'h00000000, 32'h00000000, 32'h00000000};
    tb_exp = {32'h08008145, 32'h00000080, 32'h00010200, 32'h20500000};

    @(posedge tb_clk);
    
    assert(tb_z == tb_exp)
        $display("Ok!");
    else
    begin
        $error("Test not passed!");
        $finish;
    end
    
    @(posedge tb_clk);
    
    tb_y = {32'h00000000, 32'h00000001, 32'h00000000, 32'h00000000};
    tb_exp = { 32'h88000100, 32'h00000001, 32'h00000200, 32'h00402000};
    
    @(posedge tb_clk);
    
    assert(tb_z == tb_exp)
        $display("Ok!");
    else
    begin
        $error("Test not passed!");
        $finish;
    end
    
    @(posedge tb_clk);
    
    tb_y = {32'h00000000, 32'h00000000, 32'h00000001, 32'h00000000};
    tb_exp = {32'h80040000, 32'h00000000, 32'h00000001, 32'h00002000};

    @(posedge tb_clk);
    
    assert(tb_z == tb_exp)
        $display("Ok!");
    else
    begin
        $error("Test not passed!");
        $finish;
    end
    
    @(posedge tb_clk);

    tb_y = {32'h00000000, 32'h00000000, 32'h00000000, 32'h00000001};
    tb_exp = {32'h00048044, 32'h00000080, 32'h00010000, 32'h20100001};
    
    @(posedge tb_clk);
    
    assert(tb_z == tb_exp)
        $display("Ok!");
    else
    begin
        $error("Test not passed!");
        $finish;
    end
    
    @(posedge tb_clk);

    tb_y = {32'he7e8c006, 32'hc4f9417d, 32'h6479b4b2, 32'h68c67137};
    tb_exp = {32'he876d72b, 32'h9361dfd5, 32'hf1460244, 32'h948541a3};

    @(posedge tb_clk);
    
    assert(tb_z == tb_exp)
        $display("Ok!");
    else
    begin
        $error("Test not passed!");
        $finish;
    end
    
    @(posedge tb_clk);

    tb_y = {32'hd3917c5b, 32'h55f1c407, 32'h52a58a7a, 32'h8f887a3b};
    tb_exp = { 32'h3e2f308c, 32'hd90a8f36, 32'h6ab2a923, 32'h2883524c};

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

Salsa20QuarterRound QuarterRound(
         .y0(tb_y[0]), .y1(tb_y[1]), .y2(tb_y[2]), .y3(tb_y[3]),
         .z0(tb_z[0]), .z1(tb_z[1]), .z2(tb_z[2]), .z3(tb_z[3])
);

endmodule
