`timescale 1ns / 1ps

module tb_Salsa20Core();

import pkg_salsa::*;

logic [7:0] tb_key [0:31];
logic [7:0] tb_nonce [0:15];
logic [7:0] tb_in [0:63];
logic [7:0] tb_out [0:63];
logic [7:0] tb_exp [0:63];

logic tb_clk;

logic tb_keylength;

integer fp;

// generate clock
always #HALF_CLK_PERIOD tb_clk = ~tb_clk;

initial
begin
    // init values
    tb_clk <= 0;

    fp = $fopen("sim_out.txt", "w+");
    $fwrite(fp, "Salsa20 - Salsa20Key function\n\n");
    
    tb_keylength = 1;
    tb_key = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216};
    tb_nonce = {101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116};
    // Salsa20 hello world!
    tb_in = {83, 97, 108, 115, 97, 50, 48, 32, 104, 101, 108, 108, 111, 32, 119, 111, 114, 108, 100, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    tb_exp = {22, 68, 40, 84, 72, 61, 91, 225, 151, 238, 22, 106, 197, 201, 174, 13, 43, 252, 210, 75, 21, 51, 200, 65, 239, 49, 222, 34, 215, 114, 40, 126, 104, 197, 7, 225, 197, 153, 31, 2, 102, 78, 76, 176, 84, 245, 246, 184, 177, 160, 133, 130, 6, 72, 149, 119, 192, 195, 132, 236, 234, 103, 246, 74};
    
    repeat(5) @(posedge tb_clk);
        
    assert(tb_exp == tb_out)
        $display("Ok!");
    else
        $error("Test not passed!");
    
    $fwrite(fp, "Encrypt\n");
    
    $fwrite(fp, "Out: {%d", tb_out[0]);
    for(int i = 1; i < 64; i++)
    begin
        $fwrite(fp, ", %d", tb_out[i]);
    end    
    $fwrite(fp, "}\n");
    
    $fwrite(fp, "Exp: {%d", tb_exp[0]);
    for(int i = 1; i < 64; i++)
    begin
        $fwrite(fp, ", %d", tb_exp[i]);
    end    
    $fwrite(fp, "}\n");
    
    repeat(5) @(posedge tb_clk);
    
    tb_keylength = 1;
    tb_key = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216};
    tb_nonce = {101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116};
    tb_in = {22, 68, 40, 84, 72, 61, 91, 225, 151, 238, 22, 106, 197, 201, 174, 13, 43, 252, 210, 75, 21, 51, 200, 65, 239, 49, 222, 34, 215, 114, 40, 126, 104, 197, 7, 225, 197, 153, 31, 2, 102, 78, 76, 176, 84, 245, 246, 184, 177, 160, 133, 130, 6, 72, 149, 119, 192, 195, 132, 236, 234, 103, 246, 74};
    // Salsa20 hello world!
    tb_exp = {83, 97, 108, 115, 97, 50, 48, 32, 104, 101, 108, 108, 111, 32, 119, 111, 114, 108, 100, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    
    repeat(5) @(posedge tb_clk);
    
    assert(tb_exp == tb_out)
        $display("Ok!");
    else
        $error("Test not passed!");
    
    $fwrite(fp, "Decrypt\n");
    
    $fwrite(fp, "Out: {%d", tb_out[0]);
    for(int i = 1; i < 64; i++)
    begin
        $fwrite(fp, ", %d", tb_out[i]);
    end    
    $fwrite(fp, "}\n");
    
    $fwrite(fp, "Exp: {%d", tb_exp[0]);
    for(int i = 1; i < 64; i++)
    begin
        $fwrite(fp, ", %d", tb_exp[i]);
    end    
    $fwrite(fp, "}\n");
    
    $fclose(fp);
    $finish;
end

Salsa20Core salsa20(
    .keylength(tb_keylength),
    .ptx(tb_in),
    .key(tb_key),
    .nonce(tb_nonce),
    .ctx(tb_out)
);    
endmodule
