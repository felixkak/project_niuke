`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/25 22:32:00
// Design Name: 
// Module Name: odd_sel
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


module odd_sel(
input [31:0] bus,
input sel,
output check
);
//*************code***********//
    wire tmp;
    assign tmp = ^bus[31:0];
    assign check = sel? tmp:~tmp;

    //sel的作用是选择，通过sel的0或者1，选择不同的组合逻辑对输入信号进行处理，所有三目运算符左边是一个组合逻辑，右边也是一个组合逻辑，而且比较巧，左右的组合逻辑都是用的
    //异或，但是右边多了一个非门，输出是check ,当检查数据正确的时候输出为1，错误时为0。 异或temp输出，1为奇数的时候输出为1 ，该结果可以用于奇检测，表示时奇校验数据，
    //当为偶校验的时候，这个组合逻辑代表的是1为奇数，因此此时的输出值check 应该是0，故加了一个非。
    //temp这个组合逻辑实现了奇数还是偶数的检测，因此不同的sel却又一样的本质问题。

//*************code***********//
endmodule
