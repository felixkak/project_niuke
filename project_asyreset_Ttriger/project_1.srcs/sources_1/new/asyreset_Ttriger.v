`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/14 15:15:16
// Design Name: 
// Module Name: asyreset_Ttriger
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
//new test


module asyreset_Ttriger(
    input wire data, clk, rst,
    output reg q  
);
    //*************code***********//

    reg data_1;
    always @ (posedge clk or negedge rst) begin
        if (!rst)
            data_1 <= 1'b0;
        else
            data_1 <= data ^ data_1 ;
    end
    
    always @ (posedge clk or negedge rst) begin
        if (!rst)
            q <= 1'b0;
        else
            q <= data_1 ^ q;
    end
    //*************code***********//

endmodule
