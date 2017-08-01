`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:29:29 10/22/2016 
// Design Name: 
// Module Name:    Instruction_reg 
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
module Instruction_reg(
    output [2:0] I_CODE,
    input Shift_in,
    output Shift_out,
    input Test_Log_Res,
    input Shift_IR,
    input IR_Sh_t_clk,
    input IR_Com_t_clk
    );
	 
	 reg [1:0] def = 2'b01; //Значения младших битов для Capture
	 wire [1:0] cell_w;     //Для соединения триггеров
	 wire c_2, c_1, c_0;
	 
	 assign I_CODE[2] = c_2; 
	 assign c_1 = def[1];
	 assign c_0 = def[0];
	 
	 // 2-й бит (сбрасываемый)
     Insruction_reg_cell_reset Cell_2 (
    .Shift_in(Shift_in), 
    .Shift_out(cell_w[0]), 
    .Par_in(c_2), 
    .Par_out(c_2), 
    .Test_Log_Res(Test_Log_Res), 
    .Shift_IR(Shift_IR), 
    .IR_Sh_t_clk(IR_Sh_t_clk), 
    .IR_Com_t_clk(IR_Com_t_clk)
    );
	  
	 // 1-й бит (сбрасываемый)
     Insruction_reg_cell_reset Cell_1 (
    .Shift_in(cell_w[0]), 
    .Shift_out(cell_w[1]), 
    .Par_in(c_1), 
    .Par_out(I_CODE[1]), 
    .Test_Log_Res(Test_Log_Res), 
    .Shift_IR(Shift_IR), 
    .IR_Sh_t_clk(IR_Sh_t_clk), 
    .IR_Com_t_clk(IR_Com_t_clk)
    );
	 
	 // 0-й бит (устанавливаемый)
	  Insruction_reg_cell_set Cell_0 (
    .Shift_in(cell_w[1]), 
    .Shift_out(Shift_out), 
    .Par_in(c_0), 
    .Par_out(I_CODE[0]), 
    .Test_Log_Res(Test_Log_Res), 
    .Shift_IR(Shift_IR), 
    .IR_Sh_t_clk(IR_Sh_t_clk), 
    .IR_Com_t_clk(IR_Com_t_clk)
    );


endmodule
