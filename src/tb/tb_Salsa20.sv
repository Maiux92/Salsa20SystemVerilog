`timescale 1ns / 1ps

module tb_Salsa20();

import pkg_salsa::*;


logic tb_clk;
logic tb_rst;
logic tb_init;
logic tb_data_encdec;
logic tb_we;

logic [2:0] tb_address;
logic [63:0] tb_in;

logic tb_valid;
logic tb_ready;
logic tb_initialized;
logic [63:0] tb_out;

// Addresses
localparam ADDR_KEY0 = 3'd0;
localparam ADDR_KEY1 = 3'd1;
localparam ADDR_KEY2 = 3'd2;
localparam ADDR_KEY3 = 3'd3;
localparam ADDR_NONCE = 3'd4;
localparam ADDR_SETUP = 3'd5;

integer fp;

logic [63:0] tb_exp;

// generate clock
always #HALF_CLK_PERIOD tb_clk = ~tb_clk;

logic [7:0]   fp_keylength;
logic [7:0]   fp_rounds;
logic [255:0] fp_key;
logic [63:0]  fp_nonce;

logic [10:0][7:0][63:0] fp_ptx;
logic [10:0][7:0][63:0] fp_ctx;


string test_type;
integer i, j, k;

initial
begin
    // init values
    tb_clk <= 0;
    
    tb_data_encdec = 0;
    tb_init = 0;
    tb_we = 0;
    tb_rst = 0;
    
    fp = $fopen("salsa20_test_data.bin", "rb");
    $fread(fp_keylength, fp);
    $fread(fp_key, fp);
    $fread(fp_nonce, fp);
    $fclose(fp);
    
    @(posedge tb_clk);
    
    fp = $fopen("salsa20_test_data.bin", "rb");
    $fread(fp_keylength, fp);
    $fread(fp_rounds, fp);
    
    tb_in[0] = fp_keylength[0];
    tb_in[4:1] = fp_rounds[3:0];
    
    tb_address = ADDR_SETUP;
    tb_we = 1;
    
    @(posedge tb_clk);
    
    $fread(tb_in, fp);
    tb_address = ADDR_KEY0;
    tb_we = 1;
    
    @(posedge tb_clk);
    
    $fread(tb_in, fp);
    tb_address = ADDR_KEY1;
    tb_we = 1;
    
    @(posedge tb_clk);
    
    $fread(tb_in, fp);
    tb_address = ADDR_KEY2;
    tb_we = 1;
    
    @(posedge tb_clk);
    
    $fread(tb_in, fp);
    tb_address = ADDR_KEY3;
    tb_we = 1;
    
    @(posedge tb_clk);
    
    $fread(tb_in, fp);
    tb_address = ADDR_NONCE;
    tb_we = 1;
    
    @(posedge tb_clk);
    
    tb_we = 0;
    
    $fread(fp_ptx, fp);
    $fread(fp_ctx, fp);
    
    $fclose(fp);
    
    for(k = 0; k < 2; k++)
    begin
        tb_init = 1;
        
        @(posedge tb_clk);
        
        tb_init = 0;
        
        @(posedge tb_ready);
    
        tb_in = 64'h0;
    
        @(posedge tb_clk);
    
        tb_data_encdec = 1;
        
        //@(posedge tb_clk);
        
        for(i = 0; i < 11; i++)
        begin
            for(j = 0; j < 8; j++)
            begin
                if(k == 0)
                begin
                    tb_in = fp_ptx[10-i][7-j];
                    tb_exp = fp_ctx[10-i][7-j];
                    test_type = "Encryption";
                end
                else
                begin
                    tb_exp = fp_ptx[10-i][7-j];
                    tb_in = fp_ctx[10-i][7-j];
                    test_type = "Decryption";
                end
                
                @(posedge tb_clk);
                
                if(!tb_valid)
                begin
                    //tb_data_encdec = 0;
                    
                    while(!tb_ready)
                        @(posedge tb_clk);
                    
                    //tb_data_encdec = 1;
                    
                    while(!tb_valid)
                        @(posedge tb_clk);
                end
                
                assert(tb_out == tb_exp)
                    $display("%s Block %d; Chunk %d Passed!", test_type, i, j);
                else
                begin
                    $error("%s Block %d; Chunk %d NOT PASSED!\nIn:  %H\nOut: %H\nExp: %H\n", test_type, i, j, tb_in, tb_out, tb_exp);
                    $finish;
                end
            end
        end
    
        @(posedge tb_clk);
        
        tb_data_encdec = 0;
        
        @(posedge tb_clk);
        
        tb_rst = 1;
        
        @(posedge tb_clk);
        
        tb_rst = 0;
        
        @(posedge tb_clk);
    
    end
    
    $display("Done! All test passed! %d rounds with %d bytes key", fp_rounds, fp_keylength[0] ? 32 : 16);
    
    $finish;
end

Salsa20 salsa20(
    .clk(tb_clk),
    .rst(tb_rst),
    .init(tb_init),
    .data_encdec(tb_data_encdec),
    .write_enable(tb_we),
    
    .address(tb_address),
    .in(tb_in),

    .valid(tb_valid),
    .ready(tb_ready),
    .initialized(tb_initialized),

    .out(tb_out)
);

endmodule
