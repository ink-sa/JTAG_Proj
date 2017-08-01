`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:16:05 10/22/2016 
// Design Name: 
// Module Name:    DR_MUX 
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
module DR_MUX(
    input [1:0] DR_Sel,
    input ID_reg,
    input BS_reg,
    input BP_reg,
	 input BIST_reg,
    output reg To_Sel_MUX
    );
	
	always @(*) begin
		case(DR_Sel)
			2'b00 : To_Sel_MUX = BP_reg;
			2'b01 : To_Sel_MUX = ID_reg;
			2'b10 : To_Sel_MUX = BS_reg;
			2'b11 : To_Sel_MUX = BIST_reg;
			
			default : To_Sel_MUX = BP_reg;
		endcase
	end

endmodule
