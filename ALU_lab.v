module ALU_1_bit
(
  input a,
  input b,
  input CarryIn,
  input [3:0] ALUop,
  output reg Result,
  output reg CarryOut
  
  );
always @*
begin
if (ALUop == 4'b0000)
 assign Result = a & b;
  
else if (ALUop == 4'b0001)
 assign Result = a | b;
  
else if (ALUop == 4'b0010)
 assign Result = a + b;
  
else if (ALUop == 4'b0110)
  assign Result = (a + ~b)+ 1;
  
else if (ALUop == 4'b1100)
  assign Result = ~(a | b);
  
assign CarryOut = (a & CarryIn) | (a & CarryIn) | (a & b);
end
endmodule