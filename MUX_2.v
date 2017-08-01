`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:56:22 10/18/2016 
// Design Name: 
// Module Name:    MUX_2 
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
module MUX_2(
    input In1,
    input In2,
    output reg Out,
    input Sel
    );
	
	always @(*) begin
		case(Sel)
			1'b0 : Out = In1;
			1'b1 : Out = In2;
			default : Out = 1'bx;
		endcase
	end
			
endmodule
