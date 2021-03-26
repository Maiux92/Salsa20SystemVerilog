`timescale 1ns / 1ps

module tb_Salsa20();

import pkg_salsa::*;

logic tb_clk;
logic tb_rst;
logic tb_init;
logic tb_start;

logic [7:0] tb_keylength_byte;

logic tb_keylength;
logic [7:0] tb_key [0:31];
logic [7:0] tb_nonce [0:7];
logic [7:0] tb_ptx [0:63];

logic tb_valid;
logic tb_ready;
logic tb_initialized;

logic [7:0] tb_ctx [0:63];
logic [7:0] tb_exp [0:63];

integer fp;

// generate clock
always #HALF_CLK_PERIOD tb_clk = ~tb_clk;

integer i;
integer data;
integer test_type;

initial
begin
    // init values
    tb_clk <= 0;
    
    for(test_type = 0; test_type < 2; test_type++)
    begin
        
        tb_rst = 1;
        tb_start = 0;
        tb_init = 0;
        
        i = 0;
        
        @(posedge tb_clk);
        @(posedge tb_clk);
        
        tb_rst = 0;
        
        @(posedge tb_clk);
        
        fp = $fopen("salsa20_test_data.bin", "rb");
        $fread(tb_keylength_byte, fp);
        $fread(tb_key, fp);
        $fread(tb_nonce, fp);
        
        tb_keylength = tb_keylength_byte[0];
        
        @(posedge tb_clk);
        
        tb_init = 1;
        
        @(posedge tb_clk);
        
        tb_init = 0;
        tb_key = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        tb_keylength = 0;
        tb_nonce = {0, 0, 0, 0, 0, 0, 0, 0};
        
        @(posedge tb_clk);
        
        while(!$feof(fp))
        begin
            
            // 0 = encryption; 1 = decryption
            if(test_type == 0)
            begin
                data = $fread(tb_ptx, fp);
                $fread(tb_exp, fp);
            end
            else
            begin
                data = $fread(tb_exp, fp);
                $fread(tb_ptx, fp);
            end
                
            // end if no data read
            if(data == 0)
                break;
                
            i++;
            
            tb_start = 1;
            
            @(posedge tb_clk);
                
            tb_start = 0;
            
            repeat(2) @(posedge tb_clk);
            
            if(test_type == 0)
            begin
                assert(tb_exp == tb_ctx)
                    $display("Encryption block %d ok!", i);
                else
                    $error("Encryption test not passed for block %d!", i);
            end 
            else
            begin
                assert(tb_exp == tb_ctx)
                    $display("Decryption block %d ok!", i);
                else
                    $error("Decryption test not passed for block %d!", i);
            end
                
            repeat(5) @(posedge tb_clk);
        end
        $fclose(fp);
        
     end
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
