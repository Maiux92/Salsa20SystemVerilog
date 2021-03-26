`timescale 1ns / 1ps

module tb_Salsa20DoubleKeys();

import pkg_salsa::*;

logic tb_clk;
logic tb_rst;
logic tb_init;
logic tb_initialized;
logic [3:0] tb_rounds;
logic tb_keylength;
logic [255:0] tb_key;
logic [63:0] tb_nonce;

logic tb_ready;
logic tb_valid;
logic tb_next_chunk;
logic [63:0] tb_chunk_key;

logic [7:0][63:0] tb_expected_key;

// generate clock
always #HALF_CLK_PERIOD tb_clk = ~tb_clk;
integer i;

initial
begin
    // init values
    tb_clk <= 0;
    tb_rst = 0;
    tb_init = 0;
    tb_next_chunk = 0;
    
    @(posedge tb_clk);
    
    tb_rounds = 4'd10;
    tb_keylength = 1;
    tb_key = 256'h0102030405060708090a0b0c0d0e0f10c9cacbcccdcecfd0d1d2d3d4d5d6d7d8;
    tb_nonce = 64'h65666768696a6b6c;
    
    //tb_ok = {69, 37, 68, 39, 41, 15, 107, 193, 255, 139, 122, 6, 170, 233, 217, 98, 89, 144, 182, 106, 21, 51, 200, 65, 239, 49, 222, 34, 215, 114, 40, 126, 104, 197, 7, 225, 197, 153, 31, 2, 102, 78, 76, 176, 84, 245, 246, 184, 177, 160, 133, 130, 6, 72, 149, 119, 192, 195, 132, 236, 234, 103, 246, 74};
    
    @(posedge tb_clk);
    @(posedge tb_clk);
    
    tb_init = 1;
    
    @(posedge tb_ready);
    @(posedge tb_clk);
    
    tb_next_chunk = 1;

    tb_expected_key = 512'ha09b7719223218a8fba5a33dbf01a53803878d3ac61d33fb3efa6c702c95d38d4d2291cf4bda507e3b87b81a12db25ac7b6f812cab7daee17bed3d88a8afbb94;
    
    @(posedge tb_clk);
    
    for(i = 0; i < 8; i++)
    begin
        assert(tb_chunk_key == tb_expected_key[7-i])
            $display("Ok - 1 - %d/8!", i+1);
        else
        begin
            $error("Test %d not passed!", i);
            $display("Ret : %H", tb_chunk_key);
            $display("Data: %H\n", tb_expected_key[7-i]);
            $finish;
        end
       @(posedge tb_clk); 
    end
    
    tb_next_chunk = 0;

    @(posedge tb_ready);
    @(posedge tb_clk);
    
    tb_next_chunk = 1;

    tb_expected_key = 512'h3432b110b86e67d728e121a8c685d36087c5709d6f050e4462ece78c3ec0173626f6e19283405e2f109e8f7fc765b00653811f9d1dc2cf7d3f464bdf20655d6b;
    
    @(posedge tb_clk);
    
    for(i = 0; i < 8; i++)
    begin
        assert(tb_chunk_key == tb_expected_key[7-i])
            $display("Ok - 2 - %d/8!", i+1);
        else
        begin
            $error("Test %d not passed!", i);
            $display("Ret : %H", tb_chunk_key);
            $display("Data: %H\n", tb_expected_key[7-i]);
            $finish;
        end
       @(posedge tb_clk); 
    end
    
    tb_next_chunk = 0;
    
    @(posedge tb_ready);
    @(posedge tb_clk);
    
    tb_next_chunk = 1;

    tb_expected_key = 512'h235bbbc5877a4a9a3898d92410d4fe919d02d46fba160b4d75a47788cbfeb88ea9cbbb08082aee93d0cbe61aa9fd3bd9cbf36fd5a56dc66090430700708f6f50;
    
    @(posedge tb_clk);
    
    for(i = 0; i < 8; i++)
    begin
        assert(tb_chunk_key == tb_expected_key[7-i])
            $display("Ok - 3 - %d/8!", i+1);
        else
        begin
            $error("Test %d not passed!", i);
            $display("Ret : %H", tb_chunk_key);
            $display("Data: %H\n", tb_expected_key[7-i]);
            $finish;
        end
       @(posedge tb_clk); 
    end
    
    tb_next_chunk = 0;
    
    @(posedge tb_ready);
    @(posedge tb_clk);
    
    tb_next_chunk = 1;

    tb_expected_key = 512'hdb3467fb7ccbe9e96025e55291d9a97529f36c085cb0f1d04f7964451d9718533a1a59fa45a9d955ea210af7f4a38873741b16aaab2eb3e821a40613c62a7edb;
    
    @(posedge tb_clk);
    
    for(i = 0; i < 8; i++)
    begin
        assert(tb_chunk_key == tb_expected_key[7-i])
            $display("Ok - 4 - %d/8!", i+1);
        else
        begin
            $error("Test %d not passed!", i);
            $display("Ret : %H", tb_chunk_key);
            $display("Data: %H\n", tb_expected_key[7-i]);
            $finish;
        end
       @(posedge tb_clk); 
    end
    
    $display("All test passed!");
    $finish;
end


Salsa20DoubleKeys Salsa20DoubleKeys(
    .clk(tb_clk),
    .rst(tb_rst),
    .init(tb_init),
    .rounds(tb_rounds),
    .keylength(tb_keylength),
    .key(tb_key),
    .nonce(tb_nonce),
    .next_chunk(tb_next_chunk),
    .ready(tb_ready),
    .valid(tb_valid),
    .initialized(tb_initialized),
    
    .chunk_key(tb_chunk_key)
);

endmodule
