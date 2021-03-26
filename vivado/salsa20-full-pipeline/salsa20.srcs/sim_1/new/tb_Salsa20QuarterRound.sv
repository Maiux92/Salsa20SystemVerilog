`timescale 1ns / 1ps


module tb_Salsa20QuarterRound();

import pkg_salsa::*;

logic [31:0] tb_y0;
logic [31:0] tb_y1;
logic [31:0] tb_y2;
logic [31:0] tb_y3;
logic [31:0] tb_z0;
logic [31:0] tb_z1;
logic [31:0] tb_z2;
logic [31:0] tb_z3;

logic tb_clk;

integer fp;


// generate clock
always #HALF_CLK_PERIOD tb_clk = ~tb_clk;

initial
begin
    // init values
    tb_clk <= 0;
    tb_y0 = 32'h00000000;
    tb_y1 = 32'h00000000;
    tb_y2 = 32'h00000000;
    tb_y3 = 32'h00000000;
    
    fp = $fopen("sim_out.txt", "w+");
    $fwrite(fp, "Salsa20 - QuarterRound functon\n\n");
    
    repeat(10) @(posedge tb_clk);

    $fwrite(fp, "y: %h %h %h %h    z: %h %h %h %h\n                                   expected: %h %h %h %h\n\n", tb_y0, tb_y1, tb_y2, tb_y3, tb_z0, tb_z1, tb_z2, tb_z3, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000);

    repeat(10) @(posedge tb_clk);
    
    tb_y0 = 32'h00000001;
    tb_y1 = 32'h00000000;
    tb_y2 = 32'h00000000;
    tb_y3 = 32'h00000000;
    
    repeat(10) @(posedge tb_clk);
    
    $fwrite(fp, "y: %h %h %h %h    z: %h %h %h %h\n                                   expected: %h %h %h %h\n\n", tb_y0, tb_y1, tb_y2, tb_y3, tb_z0, tb_z1, tb_z2, tb_z3, 32'h08008145, 32'h00000080, 32'h00010200, 32'h20500000);

    
    repeat(10) @(posedge tb_clk);
    
    tb_y0 = 32'h00000000;
    tb_y1 = 32'h00000001;
    tb_y2 = 32'h00000000;
    tb_y3 = 32'h00000000;
    
    repeat(10) @(posedge tb_clk);
        
    $fwrite(fp, "y: %h %h %h %h    z: %h %h %h %h\n                                   expected: %h %h %h %h\n\n", tb_y0, tb_y1, tb_y2, tb_y3, tb_z0, tb_z1, tb_z2, tb_z3, 32'h88000100, 32'h00000001, 32'h00000200, 32'h00402000);

    repeat(10) @(posedge tb_clk);
    
    tb_y0 = 32'h00000000;
    tb_y1 = 32'h00000000;
    tb_y2 = 32'h00000001;
    tb_y3 = 32'h00000000;
    
    repeat(10) @(posedge tb_clk);
    
    $fwrite(fp, "y: %h %h %h %h    z: %h %h %h %h\n                                   expected: %h %h %h %h\n\n", tb_y0, tb_y1, tb_y2, tb_y3, tb_z0, tb_z1, tb_z2, tb_z3, 32'h80040000, 32'h00000000, 32'h00000001, 32'h00002000);
    
    repeat(10) @(posedge tb_clk);
    
    tb_y0 = 32'h00000000;
    tb_y1 = 32'h00000000;
    tb_y2 = 32'h00000000;
    tb_y3 = 32'h00000001;
    
    repeat(10) @(posedge tb_clk);
    
    $fwrite(fp, "y: %h %h %h %h    z: %h %h %h %h\n                                   expected: %h %h %h %h\n\n", tb_y0, tb_y1, tb_y2, tb_y3, tb_z0, tb_z1, tb_z2, tb_z3, 32'h00048044, 32'h00000080, 32'h00010000, 32'h20100001);
    
    repeat(10) @(posedge tb_clk);
    
    tb_y0 = 32'he7e8c006;
    tb_y1 = 32'hc4f9417d;
    tb_y2 = 32'h6479b4b2;
    tb_y3 = 32'h68c67137;
    
    repeat(10) @(posedge tb_clk);
    
    $fwrite(fp, "y: %h %h %h %h    z: %h %h %h %h\n                                   expected: %h %h %h %h\n\n", tb_y0, tb_y1, tb_y2, tb_y3, tb_z0, tb_z1, tb_z2, tb_z3, 32'he876d72b, 32'h9361dfd5, 32'hf1460244, 32'h948541a3);
    
    repeat(10) @(posedge tb_clk);
    
    tb_y0 = 32'hd3917c5b;
    tb_y1 = 32'h55f1c407;
    tb_y2 = 32'h52a58a7a;
    tb_y3 = 32'h8f887a3b;
    
    repeat(10) @(posedge tb_clk);
    
    $fwrite(fp, "y: %h %h %h %h    z: %h %h %h %h\n                                   expected: %h %h %h %h\n\n", tb_y0, tb_y1, tb_y2, tb_y3, tb_z0, tb_z1, tb_z2, tb_z3, 32'h3e2f308c, 32'hd90a8f36, 32'h6ab2a923, 32'h2883524c);
    
    repeat(10) @(posedge tb_clk);
    
    $fclose(fp);
    // closes the simulation. Otherwise, it will end when it occupies the entire memory
    $finish;
end

Salsa20QuarterRound QuarterRound(
         .y0(tb_y0), .y1(tb_y1), .y2(tb_y2), .y3(tb_y3),
         .z0(tb_z0), .z1(tb_z1), .z2(tb_z2), .z3(tb_z3)
);

endmodule