`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:26:33 10/16/2016 
// Design Name: 
// Module Name:    FSM 
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
module TAP_FSM(input TCK, TMS, output reg [3:0] CODE);
 
reg [3:0] state = 0; // Состояние автомата при включении = Test-Logic-Reset

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
 
always @(posedge TCK)
 
begin
 
/*Определение следующего состояния автомата*/
 
      case(state)

      T_L_R:
            if (TMS==0)
                  state = R_T_I;
 
      R_T_I:
            if (TMS==1)
                  state = S_DR_Scan;				
 
      S_DR_Scan:
            if (TMS==0)
                  state = Cap_DR;
				else
                  state = S_IR_Scan;
 
      Cap_DR:
            if (TMS==0)
                  state = Sh_DR;
				else
                  state = Ex1_DR;
		
		Sh_DR:
				if (TMS==1)
                  state = Ex1_DR;
		
		Ex1_DR:
            if (TMS==0)
                  state = Pause_DR;
				else
                  state = Up_DR;
		
		Pause_DR:
				if (TMS==1)
                  state = Ex2_DR;
		
		Ex2_DR:
            if (TMS==0)
                  state = Sh_DR;
				else
                  state = Up_DR;
		
		Up_DR:
            if (TMS==0)
                  state = R_T_I;
				else
                  state = S_DR_Scan;
				
		S_IR_Scan:
            if (TMS==0)
                  state = Cap_IR;
				else
						state = T_L_R;
 
      Cap_IR:
            if (TMS==0)
                  state = Sh_IR;
				else
                  state = Ex1_IR;
		
		Sh_IR:
				if (TMS==1)
                  state = Ex1_IR;
		
		Ex1_IR:
            if (TMS==0)
                  state = Pause_IR;
				else
                  state = Up_IR;
		
		Pause_IR:
				if (TMS==1)
                  state = Ex2_IR;
		
		Ex2_IR:
            if (TMS==0)
                  state = Sh_IR;
				else
                  state = Up_IR;
		
		Up_IR:
            if (TMS==0)
                  state = R_T_I;
				else
                  state = S_DR_Scan;
	
		default: state = T_L_R;
 
      endcase
 
end
 
/*Состояние выхода конечного автомата*/
 
always @(state)
 
begin
 
      case (state)
 
      T_L_R: 
					begin
					CODE = 0;
					$display($time,":T_L_R");
					end
 
      R_T_I: 
					begin
					CODE = 1;
					$display($time,":R_T_I");
					end
 
      S_DR_Scan: 
					begin
					CODE = 2;
					$display($time,":S_DR_Scan");
					end
		
		S_IR_Scan: 
					begin
					CODE = 3;
					$display($time,":S_IR_Scan");
					end
		
		Cap_DR: 
					begin
					CODE = 4;
					$display($time,":Cap_DR");
					end
      
		Sh_DR: 
					begin
					CODE = 5;
					$display($time, ":Sh_DR");
					end
		
		Ex1_DR: 
					begin
					CODE = 6;
					$display($time,":Ex1_DR");
					end
		
		Pause_DR: 
					begin
					CODE = 7;
					$display($time,":Pause_DR");
					end
		
		Ex2_DR: 
					begin
					CODE = 8;
					$display($time,":Ex2_DR");
					end
		
		Up_DR: 
					begin
					CODE = 9;
					$display($time,":Up_DR");
					end
		
		Cap_IR: 
					begin
					CODE = 10;
					$display($time,":Cap_IR");
					end
      
		Sh_IR: 
					begin
					CODE = 11;
					$display($time,":Sh_IR");
					end
		
		Ex1_IR: 
					begin
					CODE = 12;
					$display($time,":Ex1_IR");
					end
		
		Pause_IR: 
					begin
					CODE = 13;
					$display($time,":Pause_IR");
					end
		
		Ex2_IR: 
					begin
					CODE = 14;
					$display($time,":Ex2_IR");
					end
		
		Up_IR: 
					begin
					CODE = 15;
					$display($time,":Up_IR");
					end			
					
					
		default: CODE = 0;
 
endcase
 
end

endmodule