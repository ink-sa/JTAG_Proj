`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:59:06 10/22/2016 
// Design Name: 
// Module Name:    I_Decoder 
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
module I_Decoder(
    input [2:0] I_CODE,
    output reg EN_BSC,
    output reg EN_BP,
    output reg EN_ID,
    output reg Mode,
    output reg [1:0] DR_Sel,
	 output reg BIST_MODE
    );

/* Кодирование команд*/ 
parameter [2:0] EXTEST				= 3'b000, 
					 BYPASS				= 3'b111, 
					 IDCODE				= 3'b001,
					 SAMPLE_PRELOAD	= 3'b010,
					 RUNBIST				= 3'b011;

//Описание декодера команд 
always @(I_CODE) begin
		case(I_CODE)
			EXTEST: begin
				EN_BSC <= 1'b1; 
				EN_BP  <= 1'b0; 
				EN_ID  <= 1'b0; 
				Mode   <= 1'b1;
				DR_Sel <= 2'b10;
				BIST_MODE <= 1'b0;	
			end

			BYPASS: begin
				EN_BSC <= 1'b0; 
				EN_BP  <= 1'b1; 
				EN_ID  <= 1'b0; 
				Mode   <= 1'b0;
				DR_Sel <= 2'b00;
				BIST_MODE <= 1'b0;
			end
			
			IDCODE: begin
				EN_BSC <= 1'b0; 
				EN_BP  <= 1'b0; 
				EN_ID  <= 1'b1; 
				Mode   <= 1'b0;
				DR_Sel <= 2'b01;
				BIST_MODE <= 1'b0;				
			end
			
			SAMPLE_PRELOAD: begin
				EN_BSC <= 1'b1; 
				EN_BP  <= 1'b0; 
				EN_ID  <= 1'b0; 
				Mode   <= 1'b0;
				DR_Sel <= 2'b10;
				BIST_MODE <= 1'b0;				
			end
			
			RUNBIST: begin
				EN_BSC <= 1'b0; 
				EN_BP  <= 1'b0; 
				EN_ID  <= 1'b0; 
				Mode   <= 1'b0;
				DR_Sel <= 2'b11;
				BIST_MODE <= 1'b1;				
			end
			
			default: begin     //=BYPASS
				EN_BSC <= 1'b0; 
				EN_BP  <= 1'b1; 
				EN_ID  <= 1'b0; 
				Mode   <= 1'b0;
				DR_Sel <= 2'b00;
				BIST_MODE <= 1'b0;				
			end	
		endcase
	end					 

endmodule
