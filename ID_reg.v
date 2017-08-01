`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:35:56 10/22/2016 
// Design Name: 
// Module Name:    ID_reg 
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
module ID_reg #(parameter N = 32-1) 
    (input ID_t_clk,
    input Shift_DR,
    input Shift_in,
    output Shift_out
    );
	
	reg [N:0] ID_code = 32'h12610093; //Код для Spartan-3AN-3S50AN rev.1
	//reg [N:0] ID_code = 32'hF2610093;
	wire [N:0] ID_code_w;
	wire [N-1:0] cell_w;	//Для соединения триггеров
	
	assign ID_code_w = ID_code;
	
	//Старший бит
	ID_reg_cell Cell_MSB (
    .Shift_DR(Shift_DR),  
    .Shift_in(Shift_in), 
    .Shift_out(cell_w[N-1]), 
    .ID_t_clk(ID_t_clk), 
    .ID_reg(ID_code_w[N])
    );
	
	genvar i;
	generate
		for(i=1; i<N; i=i+1)
			begin: regis
				ID_reg_cell Cell_t (
				.Shift_DR(Shift_DR), 
				.Shift_in(cell_w[i]), 
				.Shift_out(cell_w[i-1]), 
				.ID_t_clk(ID_t_clk), 
				.ID_reg(ID_code_w[i])
				);
			end
	endgenerate
		
	 //Младший бит
	 ID_reg_cell Cell_LSB (
    .Shift_DR(Shift_DR),  
    .Shift_in(cell_w[0]), 
    .Shift_out(Shift_out), 
    .ID_t_clk(ID_t_clk), 
    .ID_reg(ID_code_w[0])
    );

endmodule
