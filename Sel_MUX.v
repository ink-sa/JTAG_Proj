`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:25:23 10/22/2016 
// Design Name: 
// Module Name:    Sel_MUX 
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
module Sel_MUX(
    input Select,
    input From_DR_MUX,
    input I_reg,
    output reg To_OUT_TRIG
    );

	always @(*) begin
		case(Select)
			1'b0 : To_OUT_TRIG = From_DR_MUX;
			1'b1 : To_OUT_TRIG = I_reg;
			default : To_OUT_TRIG = 1'bx;
		endcase
	end



endmodule
