`timescale 1ns / 1ps

module tb_Salsa20encrypt();

import pkg_salsa::*;

logic tb_clk;
logic tb_rst;
logic tb_init;
logic tb_start;

logic tb_keylength;
logic [7:0] tb_key [0:31];
logic [7:0] tb_nonce [0:7];
logic [7:0] tb_ptx [0:63];

logic tb_valid;
logic tb_ready;
logic tb_initialized;


logic [7:0] tb_ctx [0:63];
logic [7:0] tb_exp [0:63];

// generate clock
always #HALF_CLK_PERIOD tb_clk = ~tb_clk;

initial
begin
    // init values
    tb_clk <= 0;
    tb_rst = 1;
    tb_start = 0;
    tb_init = 0;
    
    @(posedge tb_clk);
    @(negedge tb_clk);
    
    tb_rst = 0;
    
    @(posedge tb_clk);
    
    tb_init = 1;
    tb_key = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216};
    // 32-byte key
    tb_keylength = 1;
    tb_nonce = {101, 102, 103, 104, 105, 106, 107, 108};
    
    @(posedge tb_clk);
    
    tb_init = 0;
    tb_key = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    tb_keylength = 0;
    tb_nonce = {0, 0, 0, 0, 0, 0, 0, 0};
    
    @(posedge tb_clk);
    
    // Salsa20 hello world block 1!
    tb_ptx = {83, 97, 108, 115, 97, 50, 48, 32, 104, 101, 108, 108, 111, 32, 119, 111, 114, 108, 100, 32, 98, 108, 111, 99, 107, 32, 49, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    tb_exp = {243, 250, 27, 106, 67, 0, 40, 136, 147, 192, 207, 81, 208, 33, 210, 87, 113, 235, 233, 26, 164, 113, 92, 152, 85, 218, 93, 81, 44, 149, 211, 141, 77, 34, 145, 207, 75, 218, 80, 126, 59, 135, 184, 26, 18, 219, 37, 172, 123, 111, 129, 44, 171, 125, 174, 225, 123, 237, 61, 136, 168, 175, 187, 148};
    tb_start = 1;
    
    @(posedge tb_clk);
    
    tb_start = 0;
    
    repeat(2) @(posedge tb_clk);
    
    assert(tb_exp == tb_ctx)
        $display("Ok - 32byte key block 0!");
    else
        $error("Test not passed!");
    
    repeat(5) @(posedge tb_clk);
    
    // Salsa20 hello world block 2!
    tb_ptx = {83, 97, 108, 115, 97, 50, 48, 32, 104, 101, 108, 108, 111, 32, 119, 111, 114, 108, 100, 32, 98, 108, 111, 99, 107, 32, 50, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    tb_exp = {103, 83, 221, 99, 217, 92, 87, 247, 64, 132, 77, 196, 169, 165, 164, 15, 245, 169, 20, 189, 13, 105, 97, 39, 9, 204, 213, 173, 62, 192, 23, 54, 38, 246, 225, 146, 131, 64, 94, 47, 16, 158, 143, 127, 199, 101, 176, 6, 83, 129, 31, 157, 29, 194, 207, 125, 63, 70, 75, 223, 32, 101, 93, 107};
    tb_start = 1;
    
    @(posedge tb_clk);
    
    tb_start = 0;
    
    repeat(2) @(posedge tb_clk);
    
    assert(tb_exp == tb_ctx)
        $display("Ok - 32byte key block 1!");
    else
        $error("Test not passed!");
    
    repeat(20) @(posedge tb_clk);
    
    tb_rst = 1;
    
    @(posedge tb_clk);
    
    tb_rst = 0;
    
    @(posedge tb_clk);
    
    tb_init = 1;
    tb_key = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    // 16-byte key
    tb_keylength = 0;
    tb_nonce = {111, 112, 113, 114, 115, 116, 117, 118};
    
    @(posedge tb_clk);
    
    tb_init = 0;
    tb_key = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    tb_keylength = 0;
    tb_nonce = {0, 0, 0, 0, 0, 0, 0, 0};
    
    @(posedge tb_clk);
    
    // Salsa20 hello world block 3!
    tb_ptx = {83, 97, 108, 115, 97, 50, 48, 32, 104, 101, 108, 108, 111, 32, 119, 111, 114, 108, 100, 32, 98, 108, 111, 99, 107, 32, 51, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    tb_exp = {116, 236, 170, 133, 4, 251, 219, 144, 168, 218, 214, 205, 121, 88, 102, 182, 242, 78, 77, 49, 12, 169, 130, 17, 62, 146, 233, 198, 165, 82, 44, 159, 125, 248, 103, 33, 200, 61, 211, 74, 231, 193, 107, 243, 247, 116, 31, 211, 125, 71, 1, 97, 162, 210, 170, 178, 247, 143, 146, 110, 89, 70, 29, 219};
    tb_start = 1;
    
    @(posedge tb_clk);
    
    tb_start = 0;
    
    repeat(2) @(posedge tb_clk);
    
    assert(tb_exp == tb_ctx)
        $display("Ok - 16byte key block 0!");
    else
        $error("Test not passed!");
    
    repeat(5) @(posedge tb_clk);
    
    // Salsa20 hello world block 4!
    tb_ptx = {83, 97, 108, 115, 97, 50, 48, 32, 104, 101, 108, 108, 111, 32, 119, 111, 114, 108, 100, 32, 98, 108, 111, 99, 107, 32, 52, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    tb_exp = {182, 53, 14, 52, 204, 115, 143, 165, 216, 227, 210, 77, 116, 220, 89, 241, 170, 92, 107, 241, 104, 20, 177, 188, 96, 8, 148, 81, 8, 40, 182, 148, 167, 205, 51, 77, 65, 200, 152, 176, 67, 19, 24, 89, 6, 125, 193, 3, 251, 205, 86, 74, 244, 228, 212, 96, 162, 169, 39, 128, 8, 187, 62, 235};
    tb_start = 1;
    
    @(posedge tb_clk);
    
    tb_start = 0;
    
    repeat(2) @(posedge tb_clk);
    
    assert(tb_exp == tb_ctx)
        $display("Ok - 16byte key block 1!");
    else
        $error("Test not passed!");
    
    repeat(5) @(posedge tb_clk);
    
    $finish;
end

Salsa20 salsa20(
    .clk(tb_clk),
    .rst(tb_rst),
    .init(tb_init),
    .start(tb_start),
    
    .keylength(tb_keylength),
    .key(tb_key),
    .nonce(tb_nonce),
    .ptx(tb_ptx),
    
    .valid(tb_valid),
    .ready(tb_ready),
    .initialized(tb_initialized),
    .ctx(tb_ctx)
);

endmodule
