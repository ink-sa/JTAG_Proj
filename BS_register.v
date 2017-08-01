`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:08:17 12/24/2016 
// Design Name: 
// Module Name:    BS_register 
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
module BS_register #(parameter N = 10-1)  //10 бит
   (input [N:0] Par_in,
    output [N:0] Par_out,
    input Shift_in,
    output Shift_out,
    input Mode,
    input Shift_DR,
    input BSC_Cap_t_clk,
    input BSC_Up_t_clk
    );

wire [N-1:0] cell_w;	//Для соединения триггеров

//Старший бит
BSC Cell_MSB (
    .Par_in(Par_in[N]), 
    .Par_out(Par_out[N]), 
    .Shift_in(Shift_in), 
    .Shift_out(cell_w[N-1]), 
    .Shift_DR(Shift_DR), 
    .Mode(Mode), 
    .BSC_Cap_t_clk(BSC_Cap_t_clk), 
    .BSC_Up_t_clk(BSC_Up_t_clk)
    );


genvar i;
	generate
		for(i=1; i<N; i=i+1)
			begin: regis
				BSC Cell_t(
				.Par_in(Par_in[i]), 
				.Par_out(Par_out[i]), 
				.Shift_in(cell_w[i]), 
				.Shift_out(cell_w[i-1]), 
				.Shift_DR(Shift_DR), 
				.Mode(Mode), 
				.BSC_Cap_t_clk(BSC_Cap_t_clk), 
				.BSC_Up_t_clk(BSC_Up_t_clk)
				);
			end
endgenerate

// Младший бит
BSC Cell_LSB (
    .Par_in(Par_in[0]), 
    .Par_out(Par_out[0]), 
    .Shift_in(cell_w[0]), 
    .Shift_out(Shift_out), 
    .Shift_DR(Shift_DR), 
    .Mode(Mode), 
    .BSC_Cap_t_clk(BSC_Cap_t_clk), 
    .BSC_Up_t_clk(BSC_Up_t_clk)
    ); 
	 
endmodule
