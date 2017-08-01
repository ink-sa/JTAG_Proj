`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:51:24 12/19/2016 
// Design Name: 
// Module Name:    BIST_Mode_MUX 
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
module BIST_Mode_MUX#(parameter N = 6)	//Мультиплексор для 6-ти входов логики
    (input [N-1:0] From_BSC,
    input [N-1:0] From_BIST,
    input BIST_Mode_Sel,
    output [N-1:0] To_Logic
    );
		
	genvar i;
	generate
		for(i=0; i<N; i=i+1)
			begin: bist_mux
				MUX_2 MUX_cell(
				 .In1(From_BSC[i]), 
				 .In2(From_BIST[i]), 
				 .Out(To_Logic[i]), 
				 .Sel(BIST_Mode_Sel)
				 );
			end
	endgenerate
	
endmodule
