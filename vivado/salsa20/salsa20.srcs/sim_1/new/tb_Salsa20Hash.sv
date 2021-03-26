`timescale 1ns / 1ps


module tb_Salsa20Hash();

import pkg_salsa::*;

logic [7:0] tb_x [0:63];
logic [7:0] tb_z [0:63];
logic [7:0] tb_ok [0:63];

logic tb_clk;
logic tb_rst;
logic tb_start;
logic tb_valid;
logic [3:0] tb_rounds;

// generate clock
always #HALF_CLK_PERIOD tb_clk = ~tb_clk;

initial
begin
    // init values
    tb_clk <= 0;
    tb_rst <= 0;
    tb_start <= 0;
    tb_rounds = 4'd10;
    
    @(posedge tb_clk);

    tb_x = {8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0};
    tb_ok = {8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0, 8'd0};
    
    @(posedge tb_clk);
    
    tb_start = 1;
    
    @(posedge tb_clk);
    
    tb_start = 0;
    
    repeat(15) @(posedge tb_clk);
    
    assert(tb_ok == tb_z)
        $display("Ok!");
    else
    begin
        $error("Test not passed!");
        $finish;
    end
    
    repeat(5) @(posedge tb_clk);
    
    tb_x = {8'd211, 8'd159, 8'd13, 8'd115, 8'd76, 8'd55, 8'd82, 8'd183, 8'd3, 8'd117, 8'd222, 8'd37, 8'd191, 8'd187, 8'd234, 8'd136, 8'd49, 8'd237, 8'd179, 8'd48, 8'd1, 8'd106, 8'd178, 8'd219, 8'd175, 8'd199, 8'd166, 8'd48, 8'd86, 8'd16, 8'd179, 8'd207, 8'd31, 8'd240, 8'd32, 8'd63, 8'd15, 8'd83, 8'd93, 8'd161, 8'd116, 8'd147, 8'd48, 8'd113, 8'd238, 8'd55, 8'd204, 8'd36, 8'd79, 8'd201, 8'd235, 8'd79, 8'd3, 8'd81, 8'd156, 8'd47, 8'd203, 8'd26, 8'd244, 8'd243, 8'd88, 8'd118, 8'd104, 8'd54};
    tb_ok = {8'd109, 8'd42, 8'd178, 8'd168, 8'd156, 8'd240, 8'd248, 8'd238, 8'd168, 8'd196, 8'd190, 8'd203, 8'd26, 8'd110, 8'd170, 8'd154, 8'd29, 8'd29, 8'd150, 8'd26, 8'd150, 8'd30, 8'd235, 8'd249, 8'd190, 8'd163, 8'd251, 8'd48, 8'd69, 8'd144, 8'd51, 8'd57, 8'd118, 8'd40, 8'd152, 8'd157, 8'd180, 8'd57, 8'd27, 8'd94, 8'd107, 8'd42, 8'd236, 8'd35, 8'd27, 8'd111, 8'd114, 8'd114, 8'd219, 8'd236, 8'd232, 8'd135, 8'd111, 8'd155, 8'd110, 8'd18, 8'd24, 8'd232, 8'd95, 8'd158, 8'd179, 8'd19, 8'd48, 8'd202};

    @(posedge tb_clk);
    
    tb_start = 1;
    
    @(posedge tb_clk);
    
    tb_start = 0;
    
    repeat(20) @(posedge tb_clk);
    
    assert(tb_ok == tb_z)
        $display("Ok!");
    else
    begin
        $error("Test not passed!");
        $finish;
    end
    
    repeat(5) @(posedge tb_clk);
    
    tb_x = {8'd88, 8'd118, 8'd104, 8'd54, 8'd79, 8'd201, 8'd235, 8'd79, 8'd3, 8'd81, 8'd156, 8'd47, 8'd203, 8'd26, 8'd244, 8'd243, 8'd191, 8'd187, 8'd234, 8'd136, 8'd211, 8'd159, 8'd13, 8'd115, 8'd76, 8'd55, 8'd82, 8'd183, 8'd3, 8'd117, 8'd222, 8'd37, 8'd86, 8'd16, 8'd179, 8'd207, 8'd49, 8'd237, 8'd179, 8'd48, 8'd1, 8'd106, 8'd178, 8'd219, 8'd175, 8'd199, 8'd166, 8'd48, 8'd238, 8'd55, 8'd204, 8'd36, 8'd31, 8'd240, 8'd32, 8'd63, 8'd15, 8'd83, 8'd93, 8'd161, 8'd116, 8'd147, 8'd48, 8'd113};
    tb_ok = {8'd179, 8'd19, 8'd48, 8'd202, 8'd219, 8'd236, 8'd232, 8'd135, 8'd111, 8'd155, 8'd110, 8'd18, 8'd24, 8'd232, 8'd95, 8'd158, 8'd26, 8'd110, 8'd170, 8'd154, 8'd109, 8'd42, 8'd178, 8'd168, 8'd156, 8'd240, 8'd248, 8'd238, 8'd168, 8'd196, 8'd190, 8'd203, 8'd69, 8'd144, 8'd51, 8'd57, 8'd29, 8'd29, 8'd150, 8'd26, 8'd150, 8'd30, 8'd235, 8'd249, 8'd190, 8'd163, 8'd251, 8'd48, 8'd27, 8'd111, 8'd114, 8'd114, 8'd118, 8'd40, 8'd152, 8'd157, 8'd180, 8'd57, 8'd27, 8'd94, 8'd107, 8'd42, 8'd236, 8'd35};
    
    @(posedge tb_clk);
    
    tb_start = 1;
    
    @(posedge tb_clk);
    
    tb_start = 0;
    
    repeat(20) @(posedge tb_clk);
    
    assert(tb_ok == tb_z)
        $display("Ok!");
    else
    begin
        $error("Test not passed!");
        $finish;
    end
    
    repeat(5) @(posedge tb_clk);
    
    $display("All test passed!");
    $finish;
end

Salsa20Hash Salsa20(
    .clk(tb_clk),
    .rst(tb_rst),
    .start(tb_start),
    .x(tb_x),
    .rounds(tb_rounds),
    .valid(tb_valid),
    .z(tb_z)
);

endmodule
