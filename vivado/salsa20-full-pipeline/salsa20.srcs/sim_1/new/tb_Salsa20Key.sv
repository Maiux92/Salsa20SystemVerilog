`timescale 1ns / 1ps

module tb_Salsa20Key();

import pkg_salsa::*;

logic [7:0] tb_k [0:31];
logic [7:0] tb_n [0:15];
logic [7:0] tb_z [0:63];
logic [7:0] tb_ok [0:63];


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
    
    tb_k = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216};
    tb_n = {101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116};
    tb_ok = {69, 37, 68, 39, 41, 15, 107, 193, 255, 139, 122, 6, 170, 233, 217, 98, 89, 144, 182, 106, 21, 51, 200, 65, 239, 49, 222, 34, 215, 114, 40, 126, 104, 197, 7, 225, 197, 153, 31, 2, 102, 78, 76, 176, 84, 245, 246, 184, 177, 160, 133, 130, 6, 72, 149, 119, 192, 195, 132, 236, 234, 103, 246, 74};
    tb_keylength = 1;
    
    repeat(5) @(posedge tb_clk);
    
    assert(tb_ok == tb_z)
        $display("Ok!");
    else
        $error("Test not passed!");
        
    $fwrite(fp, "k: {%d", tb_k[0]);
    for(int i = 1; i < 32; i++)
    begin
        $fwrite(fp, ", %d", tb_k[i]);
    end    
    $fwrite(fp, "}\n");
    
    $fwrite(fp, "n: {%d", tb_n[0]);
    for(int i = 1; i < 16; i++)
    begin
        $fwrite(fp, ", %d", tb_n[i]);
    end
    $fwrite(fp, "}\n");
    
    $fwrite(fp, "Out: {%d", tb_z[0]);
    for(int i = 1; i < 64; i++)
    begin
        $fwrite(fp, ", %d", tb_z[i]);
    end    
    $fwrite(fp, "}\n");
        
    $fwrite(fp, "Exp: {%d", tb_ok[0]);
    for(int i = 1; i < 64; i++)
    begin
        $fwrite(fp, ", %d", tb_ok[i]);
    end    
    $fwrite(fp, "}\n\n");

    repeat(5) @(posedge tb_clk);
    
    tb_n = {101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116};
    tb_ok = {39, 173, 46, 248, 30, 200, 82, 17, 48, 67, 254, 239, 37, 18, 13, 247, 241, 200, 61, 144, 10, 55, 50, 185, 6, 47, 246, 253, 143, 86, 187, 225, 134, 85, 110, 246, 161, 163, 43, 235, 231, 94, 171, 51, 145, 214, 112, 29, 14, 232, 5, 16, 151, 140, 183, 141, 171, 9, 122, 181, 104, 182, 177, 193};
    tb_k = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    tb_keylength = 0;
    
    repeat(5) @(posedge tb_clk);
    
    assert(tb_ok == tb_z)
        $display("Ok!");
    else
        $error("Test not passed!");
        
    $fwrite(fp, "k: {%d", tb_k[0]);
    for(int i = 1; i < 16; i++)
    begin
        $fwrite(fp, ", %d", tb_k[i]);
    end    
    $fwrite(fp, "}\n");
    
    $fwrite(fp, "n: {%d", tb_n[0]);
    for(int i = 1; i < 16; i++)
    begin
        $fwrite(fp, ", %d", tb_n[i]);
    end
    $fwrite(fp, "}\n");
    
    $fwrite(fp, "Out: {%d", tb_z[0]);
    for(int i = 1; i < 64; i++)
    begin
        $fwrite(fp, ", %d", tb_z[i]);
    end    
    $fwrite(fp, "}\n");
        
    $fwrite(fp, "Exp: {%d", tb_ok[0]);
    for(int i = 1; i < 64; i++)
    begin
        $fwrite(fp, ", %d", tb_ok[i]);
    end    
    $fwrite(fp, "}\n\n");

    $fclose(fp);
    $finish;
end

//Salsa20Key32Byte Salsa20Key32Byte(
//    .n(tb_n),
//    .k(tb_k),
//    .z(tb_z)
//);

//Salsa20Key16Byte Salsa20Key16Byte(
//    .n(tb_n),
//    .k(tb_k2),
//    .z(tb_z)
//);

Salsa20Key Salsa20Key(
    .nonce(tb_n),
    .key(tb_k),
    .keylength(tb_keylength),
    .salsa20key(tb_z)
);

endmodule