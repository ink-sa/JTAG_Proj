`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:10:20 10/18/2016 
// Design Name: 
// Module Name:    D_trigger_reset 
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
//Синхронно сбрасываемый триггер
module D_trigger_reset(
    input d,
    output reg q = 0,
    input clk,
    input reset
    );
	
	always @(posedge clk) begin
		if (reset) 
			q <= 0; 
		else 
			q <= d; 
	end

endmodule
