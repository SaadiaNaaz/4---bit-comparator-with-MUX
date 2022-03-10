`timescale 1ns / 1ps


module comp(input [3:0] A, input [3:0] B, output greater, output equal);
  wire [3:0] comp_out; wire less;
  assign comp_out = A - B;
  nor(equal,comp_out[0],comp_out[1],comp_out[2],comp_out[3]);
  assign less = comp_out[3];
  nor(greater,equal,less);
endmodule