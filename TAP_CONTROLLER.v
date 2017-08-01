`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:46:55 10/22/2016 
// Design Name: 
// Module Name:    TAP_CONTROLLER 
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
module TAP_CONTROLLER #(parameter N = 10-1)  //10 бит
	(input TMS,
    input TCK,
    input TDI,
	 input [N:0] Par_BS_in,
    output TDO,
	 output [N:0] Par_BS_out,
	 output [15:0] From_BIST_reg,
	 input [15:0] To_BIST_reg,
	 output BIST_FSM_RES,
	 output BIST_clk_en,
	 output BIST_Mode_Sel
    );

	wire TCK_w;
	assign TCK_w = TCK; //Провод с сигналом TCK
	
	wire TDI_w;
	assign TDI_w = TDI; //Провод с сигналом TDI
		
	wire [3:0] CODE_FSM; //Соединение FSM и его декодера
	
	// TAP_FSM
	 TAP_FSM TAP_FSM_M (
    .TCK(TCK_w), 
    .TMS(TMS), 
    .CODE(CODE_FSM)
    );
	 
	 wire Shift_DR_w, Capture_DR_w, Update_DR_w;
	 wire Shift_IR_w, Capture_IR_w, Update_IR_w;
	 wire Test_Log_Res_w, Select_w, EN_TDO_w;
	 wire Run_Test_Idle_w;
	 
	 // FSM_Decoder
    FSM_Decoder FSM_Decoder_M (
    .CODE(CODE_FSM), 
    .TCK(TCK_w), 
    .Shift_DR(Shift_DR_w), 
    .Capture_DR(Capture_DR_w), 
    .Update_DR(Update_DR_w), 
    .Shift_IR(Shift_IR_w), 
    .Capture_IR(Capture_IR_w), 
    .Update_IR(Update_IR_w), 
    .Test_Log_Res(Test_Log_Res_w), 
    .Select(Select_w), 
    .EN_TDO(EN_TDO_w),
	 .Run_Test_Idle(Run_Test_Idle_w)														
    );
	 
	 wire [2:0] I_CODE_w; 	//Соединение IR и его декодера
	 wire IR_to_Sel_MUX; 	//Соединение Sel_MUX с IR
	 wire IR_Sh_t_clk_w; 	//Тактирование IR_Sh_t
	 wire IR_Com_t_clk_w; 	//Тактирование IR_Com_t
	 
	 // Instruction_register
	  Instruction_reg Instruction_reg_M (
    .I_CODE(I_CODE_w), 
    .Shift_in(TDI_w), 
    .Shift_out(IR_to_Sel_MUX), 
    .Test_Log_Res(Test_Log_Res_w), 
    .Shift_IR(Shift_IR_w), 
    .IR_Sh_t_clk(IR_Sh_t_clk_w), 
    .IR_Com_t_clk(IR_Com_t_clk_w)
    );

	 wire EN_BSC_w; 			//Сигнал разрешения работы с BS-reg
	 wire EN_BP_w;  			//Сигнал разрешения работы с BYPASS-reg
	 wire EN_ID_w;  			//Сигнал разрешения работы с ID-reg
	 wire Mode_w; 	 			//Сигнал режима Test/Normal
	 wire [1:0] DR_Sel_w; 	//Сигнал выбора одного из регистров DR
	 wire BIST_Mode_Sel_w;	//Сигнал работы с BIST
	 
	 // Декодер IR
     I_Decoder I_Decoder_M (
    .I_CODE(I_CODE_w), 
    .EN_BSC(EN_BSC_w), 
    .EN_BP(EN_BP_w), 
    .EN_ID(EN_ID_w), 
    .Mode(Mode_w), 
    .DR_Sel(DR_Sel_w),
	 .BIST_MODE(BIST_Mode_Sel_w)			
    );
	 
	 wire BSC_Cap_t_clk_w;	//Тактирование BSC_Cap_t
	 wire BSC_Up_t_clk_w;	//Тактирование BSC_Up_t
	 wire ID_t_clk_w;			//Тактирование ID_t
	 wire BP_t_clk_w;			//Тактирование BP_t
	 wire BIST_Sh_t_clk_w;	//Тактирование BIST_Sh_t
	 wire BIST_Com_t_clk_w; //Тактирование BIST_Com_t
	 
	 // Формирователь сигналов тактирования регистров
	  REG_TCK_Former REG_TCK_Former_M (
    .TCK(TCK_w), 
    .Shift_DR(Shift_DR_w), 
    .Capture_DR(Capture_DR_w), 
    .Update_DR(Update_DR_w), 
    .Shift_IR(Shift_IR_w), 
    .Capture_IR(Capture_IR_w), 
    .Update_IR(Update_IR_w), 
    .EN_BSC(EN_BSC_w), 
    .EN_ID(EN_ID_w), 
    .EN_BP(EN_BP_w), 
	 .BIST_Mode(BIST_Mode_Sel_w),                    
    .BSC_Cap_t_clk(BSC_Cap_t_clk_w), 
    .BSC_Up_t_clk(BSC_Up_t_clk_w), 
    .ID_t_clk(ID_t_clk_w), 
    .BP_t_clk(BP_t_clk_w), 
    .IR_Sh_t_clk(IR_Sh_t_clk_w), 
    .IR_Com_t_clk(IR_Com_t_clk_w),
    .BIST_Sh_t_clk(BIST_Sh_t_clk_w), 		
    .BIST_Com_t_clk(BIST_Com_t_clk_w)	 	
    );
	  
	 wire ID_reg_w;		//Соединение DR_MUX и ID-reg
	 wire BS_reg_w;		//Соединение DR_MUX и BS-reg
	 wire BP_reg_w;		//Соединение DR_MUX и BYPASS-reg
	 wire To_Sel_MUX_w;	//Соединение DR_MUX и Sel_MUX
	 wire BIST_reg_w;		//Соединение DR_MUX и BIST-reg
	 	 
	 // Мультиплексор выбора регистров DR
	 DR_MUX DR_MUX_M (
    .DR_Sel(DR_Sel_w), 
    .ID_reg(ID_reg_w), 
    .BS_reg(BS_reg_w), 
    .BP_reg(BP_reg_w),
	 .BIST_reg(BIST_reg_w),				
    .To_Sel_MUX(To_Sel_MUX_w)
    );
	
	 wire To_OUT_TRIG_w; //Соединение Sel_MUX и OUT_TRIG
	 
	 // Мультиплексор выбора DR/IR
    Sel_MUX Sel_MUX_M (
    .Select(Select_w), 
    .From_DR_MUX(To_Sel_MUX_w), 
    .I_reg(IR_to_Sel_MUX), 
    .To_OUT_TRIG(To_OUT_TRIG_w)
    );
	 
	 wire To_EN_BUF_w; //Соединение OUT_TRIG с EN_BUF
	 
	 // Выходной триггер 
	 OUT_TRIG OUT_TRIG_M (
    .From_Sel_MUX(To_OUT_TRIG_w), 
    .TCK(TCK_w), 
    .To_EN_BUF(To_EN_BUF_w)
    );
	
	// Выходной буфер с третьим состоянием
    EN_BUF EN_BUF_M (
    .From_OUT_TRIG(To_EN_BUF_w), 
    .EN_TDO(EN_TDO_w), 
    .TDO(TDO)
    );

	/*Регистры данных*/
	
	// BYPASS-reg
    Bypass_reg Bypass_reg_M (
    .BP_t_clk(BP_t_clk_w), 
    .TDI(TDI_w), 
    .TDO(BP_reg_w), 
    .Capture_DR(Capture_DR_w)
    );
	 
	 // ID-reg
	  ID_reg ID_reg_M (
    .ID_t_clk(ID_t_clk_w), 
    .Shift_DR(Shift_DR_w), 
    .Shift_in(TDI_w), 
    .Shift_out(ID_reg_w)
    );
	 
	 wire Fore_test_clk_former_w;
	 // BS-register
	 BS_register BS_reg_M (
    .Par_in(Par_BS_in), 
    .Par_out({Par_BS_out[9],Fore_test_clk_former_w,Par_BS_out[7:0]}), 
    .Shift_in(TDI_w), 
    .Shift_out(BS_reg_w), 
    .Mode(Mode_w), 
    .Shift_DR(Shift_DR_w), 
    .BSC_Cap_t_clk(BSC_Cap_t_clk_w), 
    .BSC_Up_t_clk(BSC_Up_t_clk_w)
    );
	
	// BIST-register
	 BIST_reg BIST_reg_M (
    .Par_in(To_BIST_reg), 
    .Par_out(From_BIST_reg), 
    .Shift_in(TDI_w), 					
    .Shift_out(BIST_reg_w), 		
    .Test_Log_Res(Test_Log_Res_w), 	
    .Shift_DR(Shift_DR_w), 			
    .BIST_Sh_t_clk(BIST_Sh_t_clk_w), 
    .BIST_Com_t_clk(BIST_Com_t_clk_w)	
    );

	// Формирователь тактового сигнала для логики в режиме EXTEST
	 Log_test_clk_generator Log_test_clk_generator_M (
    .Update_DR(Update_DR_w), 
    .Mode(Mode_w), 
    .TCK(TCK_w), 
    .From_BSC(Fore_test_clk_former_w), 
    .Test_clk(Par_BS_out[8])
    );
	
	
	//Выходы для BIST
	assign BIST_FSM_RES = Update_DR_w & BIST_Mode_Sel_w; 		//Рестарт автомата BIST по Update_DR
	assign BIST_clk_en =	Run_Test_Idle_w & BIST_Mode_Sel_w; 	//Разрешить тактирование BIST в режиме Run-Test-Idle
	assign BIST_Mode_Sel = BIST_Mode_Sel_w;						//Признак режима RUNBIST

endmodule
