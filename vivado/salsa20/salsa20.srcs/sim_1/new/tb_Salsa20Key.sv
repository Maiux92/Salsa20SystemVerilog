`timescale 1ns / 1ps

module tb_Salsa20Key();

import pkg_salsa::*;

logic [255:0] tb_key;
logic [63:0] tb_nonce;
logic [63:0] tb_blkid;
logic [7:0] tb_z [0:63];
logic [7:0] tb_ok [0:63];

logic tb_clk;
logic tb_rst;
logic tb_start;
logic tb_valid;

logic [3:0] tb_rounds;

logic tb_keylength;

// generate clock
always #HALF_CLK_PERIOD tb_clk = ~tb_clk;

initial
begin
    // init values
    tb_clk <= 0;
    tb_rst <= 0;
    tb_start <= 0;
    tb_rounds <= 4'd10;
    
    @(posedge tb_clk);
    
    tb_keylength = 1;
    
    tb_key = 256'h0102030405060708090a0b0c0d0e0f10c9cacbcccdcecfd0d1d2d3d4d5d6d7d8;
    //tb_key = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216};
    
    tb_nonce = 64'h65666768696a6b6c;
    tb_blkid = 64'h6d6e6f7071727374;
    //tb_nonce = {101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116};
    tb_ok = {69, 37, 68, 39, 41, 15, 107, 193, 255, 139, 122, 6, 170, 233, 217, 98, 89, 144, 182, 106, 21, 51, 200, 65, 239, 49, 222, 34, 215, 114, 40, 126, 104, 197, 7, 225, 197, 153, 31, 2, 102, 78, 76, 176, 84, 245, 246, 184, 177, 160, 133, 130, 6, 72, 149, 119, 192, 195, 132, 236, 234, 103, 246, 74};
    
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
    
    //tb_n = {101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116};
    tb_ok = {39, 173, 46, 248, 30, 200, 82, 17, 48, 67, 254, 239, 37, 18, 13, 247, 241, 200, 61, 144, 10, 55, 50, 185, 6, 47, 246, 253, 143, 86, 187, 225, 134, 85, 110, 246, 161, 163, 43, 235, 231, 94, 171, 51, 145, 214, 112, 29, 14, 232, 5, 16, 151, 140, 183, 141, 171, 9, 122, 181, 104, 182, 177, 193};
    //tb_k = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    tb_key = 256'h0102030405060708090a0b0c0d0e0f1000000000000000000000000000000000;
    tb_keylength = 0;
    
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
    
    @(posedge tb_clk);
    
    $display("All test passed!");
    $finish;
end

Salsa20Key Salsa20Key(
    .clk(tb_clk),
    .rst(tb_rst),
    .start(tb_start),
    .rounds(tb_rounds),
    .keylength(tb_keylength),
    .key(tb_key),
    .nonce(tb_nonce),
    .blkid(tb_blkid),
    .valid(tb_valid),
    .salsa20key(tb_z)
);

endmodule