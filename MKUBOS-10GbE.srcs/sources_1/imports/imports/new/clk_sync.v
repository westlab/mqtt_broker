`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/25 20:42:06
// Design Name: 
// Module Name: clk_sync
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clk_sync(
    input CLK,
    
    input [4:0]completion_status0,
    input [4:0]completion_status1,
    input [4:0]completion_status2,
    input [4:0]completion_status3,
    output [4:0]Rport_completion_status0,
    output [4:0]Rport_completion_status1,
    output [4:0]Rport_completion_status2,
    output [4:0]Rport_completion_status3
    );
    
   reg [4:0]completion_status01;
   reg [4:0]completion_status02;
   reg [4:0]completion_status11;
   reg [4:0]completion_status12;  
   reg [4:0]completion_status21;  
   reg [4:0]completion_status22;  
   reg [4:0]completion_status31;  
   reg [4:0]completion_status32;  
   
    always @(posedge CLK) begin
        completion_status01 <= completion_status0;
        completion_status02 <= completion_status01;
        
        completion_status11 <= completion_status1;
        completion_status12 <= completion_status11;
        
        completion_status21 <= completion_status2;
        completion_status22 <= completion_status21;
        
        completion_status31 <= completion_status3;
        completion_status32 <= completion_status31;
        
    end
    
    assign Rport_completion_status0 = completion_status02;
    assign Rport_completion_status1 = completion_status12;
    assign Rport_completion_status2 = completion_status22;
    assign Rport_completion_status3 = completion_status32;
    
endmodule
