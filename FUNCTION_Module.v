`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:42:47 12/11/2016 
// Design Name: 
// Module Name:    FUNCTION_Module 
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
module FUNCTION_Module(
    input [3:0] X_in,
    output reg[3:0] Y_out,
    input TCK,
	 input RESET
    );
	 
reg [3:0] state = 4'b0000; // Состояние автомата при включении

always @(posedge TCK or posedge RESET) begin
	if (RESET)
		state = 4'b0000; 		// Состояние автомата при асинхронном сбросе
	else 
		/*Определение следующего состояния автомата*/

      case(state)
		
			4'b0000:
				if (X_in==4'b0010)
					state = 4'b0001;
				else if ((X_in==4'b1000) || (X_in==4'b1010))
					state = 4'b0110;
				else if (X_in==4'b1111)
					state = 4'b1101;
			
			4'b0001:
				if ((X_in==4'b0100) || (X_in==4'b0101) || (X_in==4'b0110) || (X_in==4'b0111))
					state = 4'b0000;
				else if ((X_in==4'b1010) || (X_in==4'b1011))
					state = 4'b0011;
				else if (X_in==4'b0010)
					state = 4'b1011;
			
			4'b0010:
				if (X_in==4'b1011)
					state = 4'b0001;
				else if (X_in==4'b1111)
					state = 4'b0110;
				else if ((X_in==4'b0000) || (X_in==4'b0001) || (X_in==4'b0010) || (X_in==4'b0011))
					state = 4'b1001;
				else if (X_in==4'b1100)
					state = 4'b1110;
			
			4'b0011:
				if (X_in==4'b1110)
					state = 4'b0010;
				else if (X_in==4'b1010)
					state = 4'b0100;
				else if (X_in==4'b0110)
					state = 4'b1101;
			
			4'b0100:
				if (X_in==4'b1111)
					state = 4'b0001;
				else if (X_in==4'b0001)
					state = 4'b0111;
				else if (X_in==4'b1110)
					state = 4'b1001;
				else if ((X_in==4'b0101) || (X_in==4'b0111))
					state = 4'b1100;
					
			4'b0101:
				if (X_in==4'b1100)
					state = 4'b0000;
				else if (X_in==4'b0011)
					state = 4'b0010;
				else if (X_in==4'b1111)
					state = 4'b0100;
				else if (X_in==4'b0010)
					state = 4'b1000;
				else if (X_in==4'b1101)
					state = 4'b1101;
			
			4'b0110:
				if (X_in==4'b0000)
					state = 4'b0010;
				else if (X_in==4'b0001)
					state = 4'b0101;
				else if ((X_in==4'b0010) || (X_in==4'b0011))
					state = 4'b1001;
				else if ((X_in==4'b1110) || (X_in==4'b1111))
					state = 4'b1100;
			
			4'b0111:
				if (X_in==4'b0000)
					state = 4'b0000;
				else if ((X_in==4'b1100) || (X_in==4'b1110))
					state = 4'b0010;
				else if (X_in==4'b0101)
					state = 4'b0101;
				else if (X_in==4'b0011)
					state = 4'b1010;
				else if ((X_in==4'b1101) || (X_in==4'b1111))
					state = 4'b1110;
			
			4'b1000:
				if ((X_in==4'b1100) || (X_in==4'b1101))
					state = 4'b0011;	
				else if ((X_in==4'b0001) || (X_in==4'b0011))
					state = 4'b0111;	
				else if (X_in==4'b1111)
					state = 4'b1011;		
			
			4'b1001:
				if (X_in==4'b0000)
					state = 4'b0100;	
				else if (X_in==4'b0001)
					state = 4'b0111;		
				else if (X_in==4'b1110)
					state = 4'b1100;	
				else if (X_in==4'b1011)
					state = 4'b1110;	
			
			4'b1010:
				if (X_in==4'b0011)
					state = 4'b0010;	
				else if (X_in==4'b1111)
					state = 4'b0101;		
				else if (X_in==4'b1010)
					state = 4'b1000;	
				else if (X_in==4'b0001)
					state = 4'b1101;
			
			4'b1011:
				if (X_in==4'b1010)
					state = 4'b0001;	
				else if ((X_in==4'b1100) || (X_in==4'b1101))
					state = 4'b1000;		
				else if (X_in==4'b1110)
					state = 4'b1100;	
				else if (X_in==4'b1001)
					state = 4'b1110;

			4'b1100:
				if (X_in==4'b1110)
					state = 4'b0011;
				else if (X_in==4'b1001)
					state = 4'b0110;				
				else if ((X_in==4'b1010) || (X_in==4'b1011))
					state = 4'b1001;		
				else if (X_in==4'b0010)
					state = 4'b1110;	
					
			4'b1101:
				if (X_in==4'b0101)
					state = 4'b0010;
				else if (X_in==4'b1001)
					state = 4'b0011;				
				else if ((X_in==4'b0010) || (X_in==4'b0110) || (X_in==4'b1010) || (X_in==4'b1110))
					state = 4'b0101;		
				else if (X_in==4'b1111)
					state = 4'b1001;
				else if (X_in==4'b0111)
					state = 4'b1111;
					
			4'b1110:
				if (X_in==4'b1111)
					state = 4'b0001;			
				else if ((X_in==4'b0101) || (X_in==4'b1101))
					state = 4'b0100;		
				else if (X_in==4'b1100)
					state = 4'b0111;
			
			4'b1111:
				if (X_in==4'b1100)
					state = 4'b0011;
				else if (X_in==4'b1010)
					state = 4'b0111;
				else if (X_in==4'b0000)
					state = 4'b1010;					
				else if ((X_in==4'b0100) || (X_in==4'b0101) || (X_in==4'b0110) || (X_in==4'b0111))
					state = 4'b1100;		
											
			default: state = 4'b0000;	
      endcase
end

	
/*Состояние выхода конечного автомата*/
 
always @(state)
 
begin

      case(state)
			4'b0000: 
				begin
				Y_out = 4'b0000;
				$display($time,":4'b0000");
				end
			
			4'b0001: 
				begin
				Y_out = 4'b0001;
				$display($time,":4'b0001");
				end
			
			4'b0010: 
				begin
				Y_out = 4'b0010;
				$display($time,":4'b0010");
				end
			
			4'b0011: 
				begin
				Y_out = 4'b0011;
				$display($time,":4'b0011");
				end
			
			4'b0100: 
				begin
				Y_out = 4'b0100;
				$display($time,":4'b0100");
				end
			
			4'b0101: 
				begin
				Y_out = 4'b0101;
				$display($time,":4'b0101");
				end			
			
			4'b0110: 
				begin
				Y_out = 4'b0110;
				$display($time,":4'b0110");
				end			
			
			4'b0111: 
				begin
				Y_out = 4'b0111;
				$display($time,":4'b0111");
				end
			
			4'b1000: 
				begin
				Y_out = 4'b1000;
				$display($time,":4'b1000");
				end	
			
			4'b1001: 
				begin
				Y_out = 4'b1001;
				$display($time,":4'b1001");
				end	
				
			4'b1010: 
				begin
				Y_out = 4'b1010;
				$display($time,":4'b1010");
				end
			
			4'b1011: 
				begin
				Y_out = 4'b1011;
				$display($time,":4'b1011");
				end
			
			4'b1100: 
				begin
				Y_out = 4'b1100;
				$display($time,":4'b1100");
				end
			
			4'b1101: 
				begin
				Y_out = 4'b1101;
				$display($time,":4'b1101");
				end
			
			4'b1110: 
				begin
				Y_out = 4'b1110;
				$display($time,":4'b1110");
				end
			
			4'b1111: 
				begin
				Y_out = 4'b1111;
				$display($time,":4'b1111");
				end
			
			default: Y_out = 4'b0000;
	
		endcase				
			
end



endmodule
