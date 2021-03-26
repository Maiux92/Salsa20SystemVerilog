`timescale 1ns / 1ps

package pkg_salsa;
    parameter HALF_CLK_PERIOD=5;
    parameter BLOCK_SIZE=512;
    
    // Salsa20 Settings
    parameter SALSA_ROUNDS=20;
    
    // Salsa20 Constants for 32byte key
    //parameter [7:0] O0 [0:3] = {101, 120, 112, 97};
    //parameter [7:0] O1 [0:3] = {110, 100, 32, 51};
    //parameter [7:0] O2 [0:3] = {50, 45, 98, 121};
    //parameter [7:0] O3 [0:3] = {116, 101, 32, 107};
    parameter [7:0] SIGMA [0:3][0:3] = '{'{101, 120, 112, 97}, '{110, 100, 32, 51}, '{50, 45, 98, 121}, '{116, 101, 32, 107}};

    // Salsa20 Constants for 16byte key
    //parameter [7:0] T0 [0:3] = {101, 120, 112, 97};
    //parameter [7:0] T1 [0:3] = {110, 100, 32, 49};
    //parameter [7:0] T2 [0:3] = {54, 45, 98, 121};
    //parameter [7:0] T3 [0:3] = {116, 101, 32, 107};
    parameter [7:0] TAU [0:3][0:3] = '{'{101, 120, 112, 97}, '{110, 100, 32, 49}, '{54, 45, 98, 121}, '{116, 101, 32, 107}};

endpackage
