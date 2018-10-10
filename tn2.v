module tb_2
();

reg [5:0]atb;
reg [5:0]btb;
reg CarryIntb;
reg [3:0]ALUoptb;

wire [5:0]Result;
wire [5:0]Carryout;

ALU_1_bit ALU1

(
.a(atb[0]),
.b(btb[0]),
.CarryIn(CarryIntb),
.ALUop(ALUoptb),

.Result(Result[0]),
.Carryout(Carryout[0])
);

ALU_1_bit ALU2

(
.a(atb[1]),
.b(btb[1]),
.CarryIn(Carryout[0]),
.ALUop(ALUoptb),

.Result(Result[1]),
.Carryout(Carryout[1])
);

ALU_1_bit ALU3

(
.a(atb),
.b(btb),
.CarryIn(Carryout[1]),
.ALUop(ALUoptb),

.Result(Result[2]),
.Carryout(Carryout[2])
);

ALU_1_bit ALU4

(
.a(atb),
.b(btb),
.CarryIn(Carryout[2]),
.ALUop(ALUoptb),

.Result(Result[3]),
.Carryout(Carryout[3])
);

ALU_1_bit ALU5

(
.a(atb),
.b(btb),
.CarryIn(Carryout[3]),
.ALUop(ALUoptb),

.Result(Result[4]),
.Carryout(Carryout[4])
);

ALU_1_bit ALU6

(
.a(atb),
.b(btb),
.CarryIn(Carryout[4]),
.ALUop(ALUoptb),

.Result(Result[5]),
.Carryout(Carryout[5])
);

initial
 begin
   atb= 1'b00110011;
   btb= 1'b11001111;
   CarryIntb = 1'b0;
   ALUoptb = 4'b0000;
   
 end
 
endmodule
   
