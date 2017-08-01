`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:28:56 12/21/2016 
// Design Name: 
// Module Name:    BIST_reg 
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
module BIST_reg #(parameter N = 16-1)  //16 бит
   (input [N:0] Par_in,
	 output [N:0] Par_out,
    input Shift_in,
    output Shift_out,
    input Test_Log_Res,
    input Shift_DR,
    input BIST_Sh_t_clk,
    input BIST_Com_t_clk
    );
	 
wire [N-1:0] cell_w;	//Для соединения триггеров
	 
//Стрший бит (сбрасываемый)
BIST_reg_cell_reset Cell_MSB (
    .Shift_in(Shift_in), 
    .Shift_out(cell_w[N-1]), 
    .Par_in(Par_in[N]), 
    .Par_out(Par_out[N]), 
    .Test_Log_Res(Test_Log_Res), 
    .Shift_DR(Shift_DR), 
    .BIST_Sh_t_clk(BIST_Sh_t_clk), 
    .BIST_Com_t_clk(BIST_Com_t_clk)
    );

genvar i;
	generate
		for(i=1; i<N; i=i+1)
			begin: regis
			BIST_reg_cell_reset Cell_t (
			 .Shift_in(cell_w[i]), 
			 .Shift_out(cell_w[i-1]), 
			 .Par_in(Par_in[i]), 
			 .Par_out(Par_out[i]), 
			 .Test_Log_Res(Test_Log_Res), 
			 .Shift_DR(Shift_DR), 
			 .BIST_Sh_t_clk(BIST_Sh_t_clk), 
			 .BIST_Com_t_clk(BIST_Com_t_clk)
			 );
			end
endgenerate

// Младший бит
BIST_reg_cell_reset Cell_LSB (
    .Shift_in(cell_w[0]), 
    .Shift_out(Shift_out), 
    .Par_in(Par_in[0]), 
    .Par_out(Par_out[0]), 
    .Test_Log_Res(Test_Log_Res), 
    .Shift_DR(Shift_DR), 
    .BIST_Sh_t_clk(BIST_Sh_t_clk), 
    .BIST_Com_t_clk(BIST_Com_t_clk)
    );

endmodule
