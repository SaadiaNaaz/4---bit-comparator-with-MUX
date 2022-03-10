`timescale 1ns / 1ps

module circuit(input [3:0]in1, input [3:0] in2, output [3:0] result);
wire E; wire G; wire L; wire select;
  comp COMPARATOR(.A(in1), .B(in2), .equal(E), .greater(G));
  assign select =  E || G;
  mux MUX(.s(select), .D0(in2),.D1(in1),.Y(result));
endmodule