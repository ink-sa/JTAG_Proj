`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:20:33 12/21/2016 
// Design Name: 
// Module Name:    BIST_FSM_Decoder 
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
`define signal_bit_width 10 //Разрядность управляющего сигнала

module BIST_FSM_Decoder(
    input [4:0] BIST_CODE,
	 input BIST_clk,
	 input BIST_res,
    output reg Counter_incr_en = 0,	//0
	 output reg Counter_res = 0,		//1
	 output reg Mem_we = 0,				//2
	 output reg Mem_res = 0,			//3
	 output reg Bufer_we = 0,			//4
	 output reg Bufer_res = 0,			//5
	 output reg Set_error = 0,			//6
	 output reg Out_buf_res = 0,		//7
	 output reg En_Log_clk = 0,		//8
	 output reg Log_RES = 0				//9
    );

reg [`signal_bit_width - 1:0] Signal; //Соединение декодера и триггера

/* Кодирование состояний автомата*/ 
parameter [4:0] state0			= 0, 
					 state1			= 1, 
					 state1_1		= 2,
					 state1_2		= 3,			 
					 state2			= 4,
					 state2_1		= 5,
					 state2_2		= 6,					 
					 state2_3		= 7,
					 logic_res 		= 8,
					 state2_4		= 9,					 
					 state2_5		= 10,					 
					 state2_6		= 11,					 
					 state2_7		= 12,					 
					 state2_8		= 13,					 
					 state2_9		= 14,					 
					 state3			= 15,
					 state4			= 16;	
	//Описание декодера команд FSM
	always @(BIST_CODE) begin 	//Асинхронный сброс при Update содержимого триггера в 0
		case(BIST_CODE)			//Log_RES|En_Log_clk|Out_buf_res|Set_error|Bufer_res|Bufer_we|Mem_res|Mem_we|Counter_res|Counter_incr_en
			state0: 		Signal = `signal_bit_width'b0_0_0_0_0_0_0_0_0_0;		
			state1: 		Signal = `signal_bit_width'b0_0_0_0_0_0_0_0_0_0;
			state1_1:	Signal = `signal_bit_width'b0_0_0_0_0_0_0_1_0_0;
			state1_2:	Signal = `signal_bit_width'b0_0_0_0_0_0_0_0_0_1;
			
			state2:		Signal = `signal_bit_width'b0_0_0_0_0_0_0_0_1_0;
			state2_1:	Signal = `signal_bit_width'b0_0_0_0_0_1_0_0_0_0;
			state2_2:	Signal = `signal_bit_width'b0_0_0_0_0_0_0_0_0_0;
			state2_3:	Signal = `signal_bit_width'b0_0_0_0_0_0_0_0_0_0;
			logic_res:  Signal = `signal_bit_width'b1_0_0_0_0_0_0_0_0_0;
			state2_4:	Signal = `signal_bit_width'b0_0_0_0_0_0_0_0_0_1;			
			state2_5:	Signal = `signal_bit_width'b0_1_0_0_0_0_0_0_0_0;			
			state2_6:	Signal = `signal_bit_width'b0_0_0_0_0_0_0_0_0_0;
			state2_7:	Signal = `signal_bit_width'b0_0_0_0_0_0_0_0_0_0;
			state2_8:	Signal = `signal_bit_width'b0_0_0_1_0_0_0_0_0_0;
			state2_9:	Signal = `signal_bit_width'b0_0_0_0_0_0_0_0_1_0;
			
			state3:		Signal = `signal_bit_width'b0_0_1_0_1_0_1_0_1_0; 
			state4: 		Signal = `signal_bit_width'b0_0_0_0_0_0_0_0_0_0;	
					
			default: 	Signal = `signal_bit_width'b0_0_0_0_0_0_0_0_0_0;	
		endcase
	end
	
	//Описание триггера для запомниния команд по срезу
	always @(negedge BIST_clk or posedge BIST_res) begin
		if(BIST_res) begin
			Counter_incr_en				<= 0;
			Counter_res						<= 0; 	
			Mem_we							<= 0;
			Mem_res							<= 0;
			Bufer_we							<= 0;
			Bufer_res						<= 0;
			Set_error						<= 0;
			Out_buf_res						<= 0;
			En_Log_clk						<= 0;
			Log_RES							<= 0;
		end
		else begin
			Counter_incr_en				<= Signal[0];
			Counter_res						<= Signal[1]; 	
			Mem_we							<= Signal[2];
			Mem_res							<= Signal[3];
			Bufer_we							<= Signal[4];
			Bufer_res						<= Signal[5];
			Set_error						<= Signal[6];
			Out_buf_res						<= Signal[7];
			En_Log_clk						<= Signal[8];
			Log_RES							<= Signal[9];		
		end
	end

endmodule
