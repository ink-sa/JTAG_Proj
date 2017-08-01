`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:52:28 12/24/2016 
// Design Name: 
// Module Name:    BIST_out_bufer 
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
module BIST_out_bufer(
    input [7:0] Err_code,
    input clk,
    output reg [15:0] Output = 16'b11111111_00000000,
    input Err_flag,
    input res
    );
	 
	 always @(posedge clk) begin
		if(res)
			Output <= 16'b11110000_00000000;
		else if(Err_flag)
			Output <= {8'b11111111, Err_code};
	  end	
			
endmodule
