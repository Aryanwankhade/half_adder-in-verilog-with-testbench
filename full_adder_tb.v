`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.01.2026 21:47:22
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb;
//declaring the reg 
reg a,b,c;
wire sum,carry;
full_adder_tb DUT(.a(a), .b(b), .c(c) ,.sum(sum), .carry(carry));
initial begin
$monitor("Time =%b |a =%b b=%b | sum =%b carry=%b", $time ,a,b,c,sum,carry);
end
initial begin
//test all input combination
#10 a=0 ; b=0 ;c=0;
#10 a=0 ; b=0 ;c=1;
#10 a=0 ; b=1 ;c=0;
#10 a=0 ; b=1 ;c=1;
#10 a=1 ; b=0 ;c=0;
#10 a=1 ; b=0 ;c=1;
#10 a=1 ; b=1 ;c=0;
#10 a=1 ; b=1 ;c=1;
end
endmodule
