`timescale 1ns / 1ps


module mux(input s, input [3:0]D0,input [3:0]D1,output [3:0]Y);
  assign Y = s?D1:D0;
endmodule