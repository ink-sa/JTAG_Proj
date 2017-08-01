`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:24:35 01/02/2017
// Design Name:   TAP_and_UUL
// Module Name:   H:/Xilinx_ISE/Lab_2/TB_BIST.v
// Project Name:  Lab_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TAP_and_UUL
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_BIST;
	integer i = 0;
	// Inputs
	reg TDI;
	reg TCK;
	reg TMS;
	reg [5:0] Par_in;
	reg clk_50MHz;

	// Outputs
	wire TDO;
	wire TDI2;
	wire TCK2;
	wire TMS2;
	wire TDO2;
	wire [3:0] Par_out;

	// Instantiate the Unit Under Test (UUT)
	TAP_and_UUL uut (
		.TDI(TDI), 
		.TCK(TCK), 
		.TMS(TMS), 
		.TDO(TDO), 
		.TDI2(TDI2), 
		.TCK2(TCK2), 
		.TMS2(TMS2), 
		.TDO2(TDO2), 
		.Par_in(Par_in), 
		.Par_out(Par_out), 
		.clk_50MHz(clk_50MHz)
	);

	initial begin
		// Initialize Inputs
		TDI = 0;
		TCK = 0;
		TMS = 0;
		Par_in = 0;
		clk_50MHz = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

		TMS = 0;		//R_T_I
		#10 TCK=1;	
		#10 TCK=0;
		
		TMS = 1;		//Sel_DR_Scan
		#10 TCK=1;	
		#10 TCK=0;

		TMS = 1;		//Sel_IR_Scan
		#10 TCK=1;	
		#10 TCK=0;
		
		TMS = 0;		//Cap_IR
		#10 TCK=1;	
		#10 TCK=0;
		
		TMS = 0;		//Sh_IR
		#10 TCK=1;	
		#10 TCK=0;

		//Смена команды на RUNTEST Comand  = 011
		TMS = 0;		//Sh_IR
		TDI = 1;			
		#10 TCK=1;	
		#10 TCK=0;
		
		TMS = 0;		//Sh_IR
		TDI = 1;			
		#10 TCK=1;	
		#10 TCK=0;
		
		TMS = 1;		//Ex1_IR
		TDI = 0;			
		#10 TCK=1;	
		#10 TCK=0;
		//End 011
		
		TMS = 1;		//Up_IR
		#10 TCK=1;	
		#10 TCK=0;
		
		TMS = 1;		//Sel_DR_Scan
		#10 TCK=1;	
		#10 TCK=0;
		
		TMS = 0;		//Cap_DR
		#10 TCK=1;	
		#10 TCK=0;
		
		TMS = 0;		//Sh_DR
		#10 TCK=1;	
		#10 TCK=0;
			
		//Ввод 0x30_00 - команды сброса BIST
		for(i = 0; i < 12; i = i + 1) begin
			TMS = 0;
			TDI = 0;
			#10 TCK=1;	
			#10 TCK=0;
		end
		
		TMS = 0;
		TDI = 1;
		#10 TCK=1;	
		#10 TCK=0;	
		
		TMS = 0;
		TDI = 1;
		#10 TCK=1;	
		#10 TCK=0;

		TMS = 0;
		TDI = 0;
		#10 TCK=1;	
		#10 TCK=0;		
		
		TMS = 1;		//Ex1_DR
		TDI = 0;
		#10 TCK=1;	
		#10 TCK=0;
		//End 
		
		TMS = 1;		//Up_DR
		#10 TCK=1;	
		#10 TCK=0;
		
		TMS = 0;		//Переходим в Run_Test_Idle
		#10 TCK=1;	
		#10 TCK=0;				

		//Выполняем сброс BIST
		for(i = 0; i < 20; i = i + 1) begin
			#10 clk_50MHz=1;	
			#10 clk_50MHz=0;	
		end		
					
		TMS = 1;		//Sel_DR_Scan
		#10 TCK=1;	
		#10 TCK=0;		
		
		TMS = 0;		//Cap_DR
		#10 TCK=1;	
		#10 TCK=0;
		
		TMS = 0;		//Sh_DR
		#10 TCK=1;	
		#10 TCK=0;
			
		//Ввод 0x40_00 - команды начать тест
		for(i = 0; i < 14; i = i + 1) begin
			TMS = 0;
			TDI = 0;
			#10 TCK=1;	
			#10 TCK=0;
		end
		
		TMS = 0;
		TDI = 1;
		#10 TCK=1;	
		#10 TCK=0;	
		
		TMS = 1;		//Ex1_DR
		TDI = 0;
		#10 TCK=1;	
		#10 TCK=0;
		//End 
		
		TMS = 1;		//Up_DR
		#10 TCK=1;	
		#10 TCK=0;
		
		TMS = 0;		//Переходим в Run_Test_Idle
		#10 TCK=1;	
		#10 TCK=0;				


		for(i = 0; i < 30000; i = i + 1) begin
			#10 clk_50MHz=1;	
			#10 clk_50MHz=0;	
		end

//******		


		TMS = 1;		//Sel_DR_Scan
		#10 TCK=1;	
		#10 TCK=0;		
		
		TMS = 0;		//Cap_DR
		#10 TCK=1;	
		#10 TCK=0;
		
		TMS = 0;		//Sh_DR
		#10 TCK=1;	
		#10 TCK=0;	

		for(i = 0; i < 17; i = i + 1) begin
			TMS = 0;		//Sh_DR
			TDI = 0;
			#10 TCK=1;	
			#10 TCK=0;
		end

	
	end
      
endmodule
