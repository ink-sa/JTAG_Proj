`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:13:02 12/24/2016 
// Design Name: 
// Module Name:    For_logic_clk 
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
module For_logic_clk(
    input clk,
    input clk_en,
    output To_logic_clk
    );
	assign To_logic_clk = clk & clk_en;

endmodule
