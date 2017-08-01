`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:13:26 12/19/2016 
// Design Name: 
// Module Name:    DEMUX_2 
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
module DEMUX_2(
    input In,
    output reg [1:0] Out,
    input Sel
    );

	always @(*) begin
		Out = In << Sel;
	end	

endmodule
