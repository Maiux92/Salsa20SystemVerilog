`timescale 1ns / 1ps

module Salsa20Hash(
    input clk,
    input rst,
    input start,
    
    input [3:0] rounds,
    input [7:0] x [0:63],
    
    output logic valid,
    output logic [7:0] z [0:63]
);

logic [31:0] x_little [0:15];

logic [31:0] x_little_in [0:15];
logic [31:0] x_little_out [0:15];

logic [3:0] rounds_reg;
logic enabled;

initial
begin
    valid = 0;
    rounds_reg = 0;
    enabled = 0;
end

import pkg_salsa::*;

always @(posedge clk)
begin
    if(rst)
    begin
        valid <= 0;
        rounds_reg <= 0;
        enabled <= 0;
    end
    else
    if(start)
    begin
        valid <= 0;
        rounds_reg <= rounds - 1;
        enabled <= 1;
    end
    else if(enabled)
    begin
        if(rounds_reg == 0)
        begin
            valid <= 1;
            enabled <= 0;
        end
        else if(rounds_reg > 0)
            rounds_reg <= rounds_reg - 1;
    end            
end

generate
    genvar i;
    
    for(i = 0; i < 16; i++)
    begin:for_input
        always @(*)
        begin
            x_little[i] = {x[i*4+3], x[i*4+2], x[i*4+1], x[i*4]};
        end
    end:for_input
    
    for(i = 0; i < 16; i++)
    begin:for_output
        always @(posedge clk)
        begin
            if(rounds_reg == 0)
            begin
                {>>{z[i*4+3], z[i*4+2], z[i*4+1], z[i*4]}} = x_little_out[i] + x_little[i];
            end
        end
    end:for_output
    
endgenerate

always @(posedge clk)
begin
    if(start)
        x_little_in <= x_little;
    else if(rounds_reg > 0)
        x_little_in <= x_little_out;     
end

Salsa20DoubleRound Salsa20DoubleRound(
    .x(x_little_in),
    .z(x_little_out)
);

endmodule