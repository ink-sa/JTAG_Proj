`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:14:17 10/18/2016 
// Design Name: 
// Module Name:    D_trigger_set 
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
//Синхронно устанавливаемый триггер
module D_trigger_set(
    input d,
    output reg q = 1,
    input clk,
    input set
    );
	
	always @(posedge clk) begin
		if (set) 
			q <= 1; 
		else 
			q <= d; 
	end

endmodule
