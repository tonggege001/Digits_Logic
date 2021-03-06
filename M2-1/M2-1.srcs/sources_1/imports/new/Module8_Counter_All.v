`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/12 19:42:22
// Design Name: 
// Module Name: Module8_Counter_All
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


module Module8_Counter(CP,CLR,LD,M,Q3,Q2,Q1,Q0,Qcc);
    input CP;
    input CLR;
    input LD;
    input M;
    output Q3;
    output Q2;
    output Q1;
    output Q0;
    output Qcc;
    
    wire _Q3,_Q2,_Q1,_Q0;
    Module8_Counter M8C(CP,CLR,LD,M,_Q3,_Q2,_Q1,_Q0,Qcc);
    Adder ADD(_Q3,_Q2,_Q1,_Q0,0,0,1,0,Q3,Q2,Q1,Q0);
endmodule
