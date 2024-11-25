`timescale 1ns / 1ps

module asyreset_Ttriger_tb ()

;

reg data;
reg clk;
reg rst;
wire q;

asyreset_Ttriger init (
    .data(data),
    .clk(clk),
    .rst(rst),
    .q(q)  
);

initial begin
    clk = 0;
    forever #10 clk = !clk;
end

initial begin
    rst = 0;
    #100
    rst = 1;
    #100
    data = 1;
    #100
    data = 0;
    #100
    data = 1;
    #100
    data = 0;
    #100
    data = 1;
    #100
    data = 0;
    #100
    data = 1;
    #100
    data = 0;
    #1000
    $stop;
end



endmodule
