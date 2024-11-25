`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/20 15:49:04
// Design Name: 
// Module Name: asyreset_Ttriger_tb
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

module asyreset_Ttriger_tb();
	reg  data;
	wire q;
	
	reg clk=0;
	always begin
		#1 clk = !clk;
	end
    
    reg rst=0;
    always begin
		#10 rst = !rst;
	end

    always begin
        data     = 0 ;
        #1 data  = 1 ;
        #5 data  = 0 ;
    end

    asyreset_Ttriger u_Tff_2 (
        .clk    (clk),
        .rst    (rst),
        .data   (data),      
        .q      (q)      
	);

    always begin
        #100;
        if ($time >= 1000) $stop;
    end
    
    initial begin
        $dumpfile("out.vcd");
        // This will dump all signal, which may not be useful
        //$dumpvars;
        // dumping only this module
        //$dumpvars(1, testbench);
        // dumping only these variable
        // the first number (level) is actually useless
        $dumpvars(0, asyreset_Ttriger_tb);
    end
    
endmodule


