`timescale 1ns / 1ps

module Salsa20Core(
    input keylength,
    input [7:0] ptx [0:63],
    input [7:0] key [0:31],
    input [7:0] nonce [0:15],
    output logic [7:0] ctx [0:63]
);

logic [7:0] salsa20key [0:63];

generate
    genvar i;
    
    for(i = 0; i < 64; i++)
    begin:for0
        always @(ptx[i], salsa20key[i])
        begin
            ctx[i] = ptx[i] ^ salsa20key[i];
        end
    end:for0
endgenerate

Salsa20Key Salsa20Key(
    .keylength(keylength),
    .nonce(nonce),
    .key(key),
    .salsa20key(salsa20key)
);

endmodule
