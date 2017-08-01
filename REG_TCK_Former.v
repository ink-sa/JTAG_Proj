`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:26:22 10/21/2016 
// Design Name: 
// Module Name:    REG_TCK_Former 
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
module REG_TCK_Former(
    input TCK,
    input Shift_DR,
    input Capture_DR,
    input Update_DR,
    input Shift_IR,
    input Capture_IR,
    input Update_IR,
    input EN_BSC,
    input EN_ID,
    input EN_BP,
	 input BIST_Mode,
    output BSC_Cap_t_clk,
    output BSC_Up_t_clk,
    output ID_t_clk,
    output BP_t_clk,
    output IR_Sh_t_clk,
    output IR_Com_t_clk,
	 output BIST_Sh_t_clk,
    output BIST_Com_t_clk
    );

	//BSC Cap_t
	assign BSC_Cap_t_clk = (Shift_DR | Capture_DR) & EN_BSC & TCK;
	
	//BSC Up_t
	assign BSC_Up_t_clk = Update_DR & EN_BSC & TCK;
	
	//ID ID_t
	assign ID_t_clk = (Shift_DR | Capture_DR) & EN_ID & TCK;
	
	//BYPASS BP_t
	assign BP_t_clk = Shift_DR & EN_BP & TCK;
	
	//IR Sh_t
	assign IR_Sh_t_clk = (Shift_IR | Capture_IR) & TCK;
	
	//IR Com_t
	assign IR_Com_t_clk = Update_IR & TCK;
	
	//BIST Sh_t
	assign BIST_Sh_t_clk = (Shift_DR | Capture_DR) & BIST_Mode & TCK;
	
	//BIST Com_t
	assign BIST_Com_t_clk = Update_DR & BIST_Mode & TCK;

endmodule
