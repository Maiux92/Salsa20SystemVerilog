`timescale 1ns / 1ps


module tb_Salsa20Hash();

import pkg_salsa::*;

logic [7:0] tb_x [0:63];
logic [7:0] tb_z [0:63];
logic [7:0] tb_ok [0:63];


logic tb_clk;

integer fp;

// generate clock
always #HALF_CLK_PERIOD tb_clk = ~tb_clk;

initial
begin
    // init values
    tb_clk <= 0;

    fp = $fopen("sim_out.txt", "w+");
    $fwrite(fp, "Salsa20 - Salsa20Hash functon\n\n");
    
    tb_x = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    tb_ok = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    
    repeat(5) @(posedge tb_clk);
    
    assert(tb_ok == tb_z)
        $display("Ok!");
    else
        $error("Test not passed!");
        
    $fwrite(fp, "  x: {%d", tb_x[0]);
    for(int i = 1; i < 64; i++)
    begin
        $fwrite(fp, ", %d", tb_x[i]);
    end    
    $fwrite(fp, "}\n");
    
    $fwrite(fp, "  z: {%d", tb_z[0]);
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
    $fwrite(fp, "}\n");
    
    $fwrite(fp, "littleendian(x): {");
    for(int i = 0; i < 16; i++)
    begin
        $fwrite(fp, "0x%h, ", {tb_x[i*4+3], tb_x[i*4+2], tb_x[i*4+1], tb_x[i*4]});
    end
    $fwrite(fp, "}\n");
    
    $fwrite(fp, "littleendian(z): {");
    for(int i = 0; i < 16; i++)
    begin
        $fwrite(fp, "0x%h, ", {tb_z[i*4+3], tb_z[i*4+2], tb_z[i*4+1], tb_z[i*4]});
    end
    $fwrite(fp, "}\n");
    
    $fwrite(fp, "littleendian(e): {");
    for(int i = 0; i < 16; i++)
    begin
        $fwrite(fp, "0x%h, ", {tb_ok[i*4+3], tb_ok[i*4+2], tb_ok[i*4+1], tb_ok[i*4]});
    end
    $fwrite(fp, "}\n\n");
    
    repeat(5) @(posedge tb_clk);
    
    tb_x = {211, 159, 13, 115, 76, 55, 82, 183, 3, 117, 222, 37, 191, 187, 234, 136, 49, 237, 179, 48, 1, 106, 178, 219, 175, 199, 166, 48, 86, 16, 179, 207, 31, 240, 32, 63, 15, 83, 93, 161, 116, 147, 48, 113, 238, 55, 204, 36, 79, 201, 235, 79, 3, 81, 156, 47, 203, 26, 244, 243, 88, 118, 104, 54};
    tb_ok = {109, 42, 178, 168, 156, 240, 248, 238, 168, 196, 190, 203, 26, 110, 170, 154, 29, 29, 150, 26, 150, 30, 235, 249, 190, 163, 251, 48, 69, 144, 51, 57, 118, 40, 152, 157, 180, 57, 27, 94, 107, 42, 236, 35, 27, 111, 114, 114, 219, 236, 232, 135, 111, 155, 110, 18, 24, 232, 95, 158, 179, 19, 48, 202};$fwrite(fp, "In: {%d", tb_x[0]);
    
    repeat(5) @(posedge tb_clk);
    
    assert(tb_ok == tb_z)
        $display("Ok!");
    else
        $error("Test not passed!");
        
    $fwrite(fp, "  x: {%d", tb_x[0]);
    for(int i = 1; i < 64; i++)
    begin
        $fwrite(fp, ", %d", tb_x[i]);
    end    
    $fwrite(fp, "}\n");
    
    $fwrite(fp, "  z: {%d", tb_z[0]);
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
    $fwrite(fp, "}\n");
    
    $fwrite(fp, "littleendian(x): {");
    for(int i = 0; i < 16; i++)
    begin
        $fwrite(fp, "0x%h, ", {tb_x[i*4+3], tb_x[i*4+2], tb_x[i*4+1], tb_x[i*4]});
    end
    $fwrite(fp, "}\n");
    
    $fwrite(fp, "littleendian(z): {");
    for(int i = 0; i < 16; i++)
    begin
        $fwrite(fp, "0x%h, ", {tb_z[i*4+3], tb_z[i*4+2], tb_z[i*4+1], tb_z[i*4]});
    end
    $fwrite(fp, "}\n");
    
    $fwrite(fp, "littleendian(e): {");
    for(int i = 0; i < 16; i++)
    begin
        $fwrite(fp, "0x%h, ", {tb_ok[i*4+3], tb_ok[i*4+2], tb_ok[i*4+1], tb_ok[i*4]});
    end
    $fwrite(fp, "}\n\n");
    
    repeat(5) @(posedge tb_clk);
    
    tb_x = {88, 118, 104, 54, 79, 201, 235, 79, 3, 81, 156, 47, 203, 26, 244, 243, 191, 187, 234, 136, 211, 159, 13, 115, 76, 55, 82, 183, 3, 117, 222, 37, 86, 16, 179, 207, 49, 237, 179, 48, 1, 106, 178, 219, 175, 199, 166, 48, 238, 55, 204, 36, 31, 240, 32, 63, 15, 83, 93, 161, 116, 147, 48, 113};
    tb_ok = {179, 19, 48, 202, 219, 236, 232, 135, 111, 155, 110, 18, 24, 232, 95, 158, 26, 110, 170, 154, 109, 42, 178, 168, 156, 240, 248, 238, 168, 196, 190, 203, 69, 144, 51, 57, 29, 29, 150, 26, 150, 30, 235, 249, 190, 163, 251, 48, 27, 111, 114, 114, 118, 40, 152, 157, 180, 57, 27, 94, 107, 42, 236, 35};
    
    repeat(5) @(posedge tb_clk);
    
    assert(tb_ok == tb_z)
        $display("Ok!");
    else
        $error("Test not passed!");
        
    $fwrite(fp, "  x: {%d", tb_x[0]);
    for(int i = 1; i < 64; i++)
    begin
        $fwrite(fp, ", %d", tb_x[i]);
    end    
    $fwrite(fp, "}\n");
    
    $fwrite(fp, "  z: {%d", tb_z[0]);
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
    $fwrite(fp, "}\n");
    
    $fwrite(fp, "littleendian(x): {");
    for(int i = 0; i < 16; i++)
    begin
        $fwrite(fp, "0x%h, ", {tb_x[i*4+3], tb_x[i*4+2], tb_x[i*4+1], tb_x[i*4]});
    end
    $fwrite(fp, "}\n");
    
    $fwrite(fp, "littleendian(z): {");
    for(int i = 0; i < 16; i++)
    begin
        $fwrite(fp, "0x%h, ", {tb_z[i*4+3], tb_z[i*4+2], tb_z[i*4+1], tb_z[i*4]});
    end
    $fwrite(fp, "}\n");
    
    $fwrite(fp, "littleendian(e): {");
    for(int i = 0; i < 16; i++)
    begin
        $fwrite(fp, "0x%h, ", {tb_ok[i*4+3], tb_ok[i*4+2], tb_ok[i*4+1], tb_ok[i*4]});
    end
    $fwrite(fp, "}\n\n");
    
    repeat(5) @(posedge tb_clk);
    
    $fclose(fp);
    
    $finish;
end

Salsa20Hash Salsa20(
    .x(tb_x),
    .z(tb_z)
);

endmodule
