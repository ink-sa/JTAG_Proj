`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:57:20 10/25/2016 
// Design Name: 
// Module Name:    TAP_and_UUL 
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
module TAP_and_UUL 
   (input TDI,
    input TCK,
    input TMS,
    output TDO,
	
  	 output TDI2,
    output TCK2,
    output TMS2,
    output TDO2,
	 
    input [5:0] Par_in,
    output [3:0] Par_out,
	 
	 input clk_50MHz
    );


wire MS, CK, DI, DO; //Провода для разветвления на 2 JTAG

assign MS = TMS;
assign TMS2 = MS;

assign CK = TCK;
assign TCK2 = CK;

assign DI = TDI;
assign TDI2 = DI;

assign DO = TDO;
assign TDO2 = DO;

wire [5:0] From_MUX_to_Logic; 

wire [5:0] From_BS_to_MUX; 
wire BIST_Mode_Sel;
wire BIST_clk_en;
wire BIST_FSM_RES;
wire [15:0] From_BIST_reg;

wire [3:0] BIST_to_logic_X;
wire BIST_to_logic_res;
wire BIST_to_logic_clk;
wire [15:0] To_BIST_reg;

wire [3:0] From_Logic_to_DEMUX;

wire [3:0] From_DEMUX_to_BS; 
wire [3:0] From_DEMUX_to_BIST;

//Мультиплексор для подключения BIST/входов BSC к логике
BIST_Mode_MUX BIST_MUX (
    .From_BSC(From_BS_to_MUX), 
    .From_BIST({BIST_to_logic_res, BIST_to_logic_clk, BIST_to_logic_X}), 
    .BIST_Mode_Sel(BIST_Mode_Sel), 
    .To_Logic(From_MUX_to_Logic)
    );


// TAP-контроллер 
TAP_CONTROLLER TAP_CONTROLLER_M (
    .TMS(TMS), 
    .TCK(TCK), 
    .TDI(TDI), 
    .Par_BS_in({Par_in, From_DEMUX_to_BS}), 
    .TDO(TDO), 
    .Par_BS_out({From_BS_to_MUX, Par_out}), 
    .From_BIST_reg(From_BIST_reg), 
    .To_BIST_reg(To_BIST_reg), 
    .BIST_FSM_RES(BIST_FSM_RES), 
    .BIST_clk_en(BIST_clk_en), 
    .BIST_Mode_Sel(BIST_Mode_Sel)
    );

// BIST-блок
BIST_block BIST_block_M (
    .BIST_from_logic_Y(From_DEMUX_to_BIST), //
    .BIST_to_logic_X(BIST_to_logic_X), //
    .BIST_to_logic_res(BIST_to_logic_res), //
    .BIST_to_logic_clk(BIST_to_logic_clk), //
    .clk_50MHz(clk_50MHz), //
    .BIST_clk_en(BIST_clk_en), //
    .BIST_res(BIST_FSM_RES), //
    .From_BIST_reg(From_BIST_reg), 
    .To_BIST_reg(To_BIST_reg)
    );


//Логика для проверки
FUNCTION_Module FUNCT_Module (
    .X_in(From_MUX_to_Logic[3:0]), 
    .Y_out(From_Logic_to_DEMUX), 
    .TCK(From_MUX_to_Logic[4]), 
    .RESET(From_MUX_to_Logic[5])
    );

//Демультиплексор для подключения логики к BIST/BSC
BIST_Mode_DEMUX BIST_DEMUX (
    .From_Logic(From_Logic_to_DEMUX), 
    .To_BSC(From_DEMUX_to_BS), 
    .To_BIST(From_DEMUX_to_BIST), 					
    .BIST_Mode_Sel(BIST_Mode_Sel)
    );

endmodule
