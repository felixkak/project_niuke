`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/25 22:32:14
// Design Name: 
// Module Name: odd_sel_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module testbench();
    wire check;
    reg sel=0;
    reg clk=0;
     
    reg [31:0] bus=32'b0;
     initial
     begin
           #20 sel = ~sel;
           #60  sel=~sel;
           #60  sel=~sel;
           #50  sel=~sel;
          $finish;
          
      end
          always
        begin
           #5 clk = ~clk;
           end
    always
        begin
             #20 bus = bus+1;
             end
    odd_sel test(
    .bus(bus),
    .sel(sel),
    .check(check)
               );
endmodule