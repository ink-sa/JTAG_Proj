`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:59:49 12/19/2016 
// Design Name: 
// Module Name:    BIST_Mode_DEMUX 
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
module BIST_Mode_DEMUX#(parameter N = 4)	//Демультиплексор для 4-х выходов логики
    (input [N-1:0] From_Logic,
    output [N-1:0] To_BSC,
    output [N-1:0] To_BIST,
    input BIST_Mode_Sel
    );

	genvar i;
	generate
		for(i=0; i<N; i=i+1)
			begin: bist_mux
			DEMUX_2 demux_cell (
				 .In(From_Logic[i]), 
				 .Out({To_BIST[i], To_BSC[i]}), 
				 .Sel(BIST_Mode_Sel)
				 );
			end
	endgenerate

endmodule
