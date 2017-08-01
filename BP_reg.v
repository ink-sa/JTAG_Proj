`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:12:37 10/19/2016 
// Design Name: 
// Module Name:    BP_reg 
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
module Bypass_reg(
    input BP_t_clk,
    input TDI,
    output TDO,
    input Capture_DR
    );
		
	//Триггер регистра BP_t
	 D_trigger_reset Bypass_t (
    .d(TDI), 
    .q(TDO), 
    .clk(BP_t_clk), 
    .reset(Capture_DR)
    );

endmodule