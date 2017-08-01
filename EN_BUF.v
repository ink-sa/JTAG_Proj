`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:34:44 10/22/2016 
// Design Name: 
// Module Name:    EN_BUF 
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
module EN_BUF(
    input From_OUT_TRIG,
    input EN_TDO,
    output TDO
    );
	
	assign TDO = EN_TDO ? From_OUT_TRIG : 1'bZ;

endmodule
