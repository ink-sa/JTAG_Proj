`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:36:57 10/18/2016 
// Design Name: 
// Module Name:    ID_reg_cell 
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
module ID_reg_cell(
    input Shift_DR,
    input Shift_in,
    output Shift_out,
    input ID_t_clk,
	 input ID_reg
    );
	 
	 wire Mux_t;
	 
	 //Мультиплексор режима Shift/Load
	 MUX_2 instance_name (
    .In1(ID_reg), 
    .In2(Shift_in), 
    .Out(Mux_t), 
    .Sel(Shift_DR)
    );
	 
	 //Сдвиговый триггер регистра ID_t
	 D_trigger ID_t (
    .clk(ID_t_clk), 
    .d(Mux_t), 
    .q(Shift_out)
    );
	


endmodule
