`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:27:57 12/23/2016 
// Design Name: 
// Module Name:    BIST_Comand_Decoder 
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
module BIST_Comand_Decoder(
    input [7:0] Comand_in,
    output reg[3:0] To_Logic_X,
    output reg End_flag,
    output reg log_clk_en,
	 output reg log_res_flag
    );
	
	always @(Comand_in) begin
		case(Comand_in)
			//Команды подачи сигналов на вход логики X 
			8'b0001_0000:
				begin
					To_Logic_X 		<= 4'b0000;
					End_flag 		<= 1'b0;
					log_clk_en		<= 1'b1;
					log_res_flag   <= 1'b0;
				end	
			
			8'b0001_0001:
				begin
					To_Logic_X 		<= 4'b0001;
					End_flag 		<= 1'b0;
					log_clk_en		<= 1'b1;	
					log_res_flag   <= 1'b0;					
				end							

			8'b0001_0010:
				begin
					To_Logic_X 		<= 4'b0010;
					End_flag 		<= 1'b0;
					log_clk_en		<= 1'b1;	
					log_res_flag   <= 1'b0;					
				end			
			
			8'b0001_0011:
				begin
					To_Logic_X 		<= 4'b0011;
					End_flag 		<= 1'b0;
					log_clk_en		<= 1'b1;	
					log_res_flag   <= 1'b0;					
				end			
			
			8'b0001_0100:
				begin
					To_Logic_X 		<= 4'b0100;
					End_flag 		<= 1'b0;
					log_clk_en		<= 1'b1;	
					log_res_flag   <= 1'b0;					
				end			

			8'b0001_0101:
				begin
					To_Logic_X 		<= 4'b0101;
					End_flag 		<= 1'b0;
					log_clk_en		<= 1'b1;
					log_res_flag   <= 1'b0;					
				end	

			8'b0001_0110:
				begin
					To_Logic_X 		<= 4'b0110;
					End_flag 		<= 1'b0;
					log_clk_en		<= 1'b1;	
					log_res_flag   <= 1'b0;					
				end				

			8'b0001_0111:
				begin
					To_Logic_X 		<= 4'b0111;
					End_flag 		<= 1'b0;
					log_clk_en		<= 1'b1;	
					log_res_flag   <= 1'b0;					
				end	

			8'b0001_1000:
				begin
					To_Logic_X 		<= 4'b1000;
					End_flag 		<= 1'b0;
					log_clk_en		<= 1'b1;	
					log_res_flag   <= 1'b0;					
				end	

			8'b0001_1001:
				begin
					To_Logic_X 		<= 4'b1001;
					End_flag 		<= 1'b0;
					log_clk_en		<= 1'b1;	
					log_res_flag   <= 1'b0;					
				end	

			8'b0001_1010:
				begin
					To_Logic_X 		<= 4'b1010;
					End_flag 		<= 1'b0;
					log_clk_en		<= 1'b1;	
					log_res_flag   <= 1'b0;					
				end	

			8'b0001_1011:
				begin
					To_Logic_X 		<= 4'b1011;
					End_flag 		<= 1'b0;
					log_clk_en		<= 1'b1;	
					log_res_flag   <= 1'b0;					
				end	

			8'b0001_1100:
				begin
					To_Logic_X 		<= 4'b1100;
					End_flag 		<= 1'b0;
					log_clk_en		<= 1'b1;	
					log_res_flag   <= 1'b0;					
				end	

			8'b0001_1101:
				begin
					To_Logic_X 		<= 4'b1101;
					End_flag 		<= 1'b0;
					log_clk_en		<= 1'b1;	
					log_res_flag   <= 1'b0;					
				end	

			8'b0001_1110:
				begin
					To_Logic_X 		<= 4'b1110;
					End_flag 		<= 1'b0;
					log_clk_en		<= 1'b1;	
					log_res_flag   <= 1'b0;					
				end	

			8'b0001_1111:
				begin
					To_Logic_X 		<= 4'b1111;
					End_flag 		<= 1'b0;
					log_clk_en		<= 1'b1;	
					log_res_flag   <= 1'b0;					
				end	

			//Команда завершения теста			
			8'b0000_0000:
				begin
					To_Logic_X 		<= 4'b0000;
					End_flag 		<= 1'b1;
					log_clk_en		<= 1'b0;	
					log_res_flag   <= 1'b0;					
				end			

			//Команда сброса логики			
			8'b0010_0000:
				begin
					To_Logic_X 		<= 4'b0000;
					End_flag 		<= 1'b0;
					log_clk_en		<= 1'b0;	
					log_res_flag   <= 1'b1;					
				end
			
			default: 
				begin
					To_Logic_X 		<= 4'b0000;
					End_flag 		<= 1'b0;
					log_clk_en		<= 1'b0;	
					log_res_flag   <= 1'b0;					
				end				
		endcase		
	end

endmodule
