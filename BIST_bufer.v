`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:07:21 12/23/2016 
// Design Name: 
// Module Name:    BIST_bufer 
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
module BIST_bufer(
    input clk,
    input Bufer_write_en,
    input Bufer_res,
    input [15:0] In,
    output reg [7:0] Out_com = 0,
    output reg [7:0] Out_data = 0
    );
	
	always @(posedge clk) begin
		if(Bufer_res) begin
			Out_com <= 0;
			Out_data <= 0;
		end
		else if(Bufer_write_en) begin
			Out_com <= In[15:8];
			Out_data <= In[7:0];
		end
	end
endmodule
