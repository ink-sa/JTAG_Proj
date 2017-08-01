`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:31:45 10/21/2016 
// Design Name: 
// Module Name:    FSM_Decoder 
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
module FSM_Decoder(
    input [3:0] CODE,
	 input TCK,
    output reg Shift_DR = 0,
	 output reg Capture_DR = 0,
	 output reg Update_DR = 0,
	 output reg Shift_IR = 0,
	 output reg Capture_IR = 0,
	 output reg Update_IR = 1,
	 output reg Test_Log_Res = 1,
	 output reg Select = 0,
	 output reg EN_TDO = 0,
	 output reg Run_Test_Idle = 0
    );

reg [9:0] Signal; //Соединение декодера и триггера

/* Кодирование состояний автомата*/ 
parameter [3:0] T_L_R		= 0, 
					 R_T_I		= 1, 
					 S_DR_Scan	= 2,
					 S_IR_Scan	= 3,
					 
					 Cap_DR		= 4,
					 Sh_DR		= 5,
					 Ex1_DR		= 6,
					 Pause_DR	= 7,
					 Ex2_DR		= 8, 
					 Up_DR		= 9,
					 
					 Cap_IR		= 10,
					 Sh_IR		= 11,
					 Ex1_IR		= 12,
					 Pause_IR	= 13,
					 Ex2_IR		= 14,
					 Up_IR		= 15;	
   	
	//Описание декодера команд FSM
	always @(CODE) begin
		case(CODE)
			T_L_R: 		Signal = 10'b0_000_001_1_0_0;		
			R_T_I: 		Signal = 10'b1_000_000_0_0_0;
			
			S_DR_Scan: 	Signal = 10'b0_000_000_0_0_0;
			S_IR_Scan: 	Signal = 10'b0_000_000_0_1_0;
			
			Cap_DR: 		Signal = 10'b0_010_000_0_0_0;
			Sh_DR: 		Signal = 10'b0_100_000_0_0_1;			
			Ex1_DR: 		Signal = 10'b0_000_000_0_0_0;			
			Pause_DR: 	Signal = 10'b0_000_000_0_0_0;			
			Ex2_DR: 		Signal = 10'b0_000_000_0_0_0;			
			Up_DR: 		Signal = 10'b0_001_000_0_0_0;
						
			Cap_IR: 		Signal = 10'b0_000_010_0_1_0;			
			Sh_IR: 		Signal = 10'b0_000_100_0_1_1;		
			Ex1_IR: 		Signal = 10'b0_000_000_0_1_0;		
			Pause_IR: 	Signal = 10'b0_000_000_0_1_0;			
			Ex2_IR: 		Signal = 10'b0_000_000_0_1_0;			
			Up_IR: 		Signal = 10'b0_000_001_0_1_0;
			
			default: 	Signal = 10'b0_000_001_1_0_0;	
		endcase
	end
	
	//Описание триггера для запомниния команд по срезу
	always @(negedge TCK) begin
		Run_Test_Idle	<=	Signal[9];
		Shift_DR 		<= Signal[8];
		Capture_DR 		<= Signal[7];
	   Update_DR 		<= Signal[6];
		Shift_IR 		<= Signal[5];
		Capture_IR 		<= Signal[4];
		Update_IR 		<= Signal[3];
		Test_Log_Res 	<= Signal[2];
		Select 			<= Signal[1];
		EN_TDO 			<= Signal[0]; 
	end
	

endmodule
