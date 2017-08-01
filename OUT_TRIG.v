`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:30:35 10/22/2016 
// Design Name: 
// Module Name:    OUT_TRIG 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module OUT_TRIG(
    input From_Sel_MUX,
    input TCK,
    output reg To_EN_BUF
    );
	
	always @(negedge TCK)
		To_EN_BUF <= From_Sel_MUX;

endmodule
