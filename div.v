`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: zmw
// 
// Create Date:    19:53:56 11/22/2015 
// Design Name: 
// Module Name:    div 
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
module div
(
    CLK, RST,
	 Number_Data,
	 Ten_Data, One_Data
);

    input CLK;
	 input RST;
	 input [7:0]Number_Data;
	 output [3:0]Ten_Data;
	 output [3:0]One_Data;
	 
	 /*********************************/
	 
	 reg [31:0]rTen;
	 reg [31:0]rOne;
	 
	 always @ ( posedge CLK or negedge RST )
	     if( !RST )
		      begin
				    rTen <= 32'd0;
					 rOne <= 32'd0;
				end
			else 
			    begin
				     rTen <= Number_Data / 10;
					  rOne <= Number_Data % 10;
				 end
	
	 /***********************************/
	 
	 assign Ten_Data = rTen[3:0];
	 assign One_Data = rOne[3:0];
	 
	 /***********************************/

endmodule