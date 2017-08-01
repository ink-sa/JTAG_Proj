`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:27:00 10/18/2016 
// Design Name: 
// Module Name:    BSC 
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
module BSC(
    input Par_in,
    output Par_out,
    input Shift_in,
    output Shift_out,
    input Shift_DR,
    input Mode,
    input BSC_Cap_t_clk,
    input BSC_Up_t_clk
    );
	
	wire Mux_t, Tr_t_TDO, Tr_mux;
	
	//Триггер сдвигового регистра Cat_t
	D_trigger Capture_t (
    .clk(BSC_Cap_t_clk), 
    .d(Mux_t), 
    .q(Tr_t_TDO)
    );
	
	//Триггер теневого регистра Up_t
	D_trigger Update_t (
    .clk(BSC_Up_t_clk), 
    .d(Tr_t_TDO), 
    .q(Tr_mux)
    );
	 
	 //Мультиплексор режима Shift/Load
	 MUX_2 Mode_shift_mux (
    .In1(Par_in), 
    .In2(Shift_in), 
    .Out(Mux_t), 
    .Sel(Shift_DR)
    );
	 
	 //Мультиплексор режима Test/Normal
	 MUX_2 Mode_test_mux (
    .In1(Par_in), 
    .In2(Tr_mux), 
    .Out(Par_out), 
    .Sel(Mode)
    );
	
	assign Shift_out = Tr_t_TDO;

endmodule
