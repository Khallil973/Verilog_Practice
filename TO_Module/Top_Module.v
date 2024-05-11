//For Joiniing the Modules we use `include 
`include "Module_1.v"
`include "Module_2.v"


module Top_Level_Module(A,B,C,D,rst,clk,Z);

    input A,B,C,D,clk,rst;
    output Z;

//defining the Middle Reg
reg [1:0] Middle_Reg;


//Module instantiation of Module 1 
wire output_1_module_1,output_2_module_1;
//Module_1 use for design under test dut

Module_1 Module_1(
                    .A(A),
                    .B(B),
                    .C(C),
                    .D(D),
                    .output_1_module_1(output_1_module_1),
                    .output_2_module_1(output_2_module_1)
                );

always @ (posedge clk) begin

    if (rst) begin
        Middle_Reg <= 2'b00;
    end
    else begin
        Middle_Reg[0] <= output_1_module_1;
        Middle_Reg[1] <= output_2_module_1;
    end
end
//Module instantiation of Module 2
//Module_2 use for design under test dut
Module_2 Module_2(
                    .Input_1_Module_2(Middle_Reg[0]),
                    .Input_2_Module_2(Middle_Reg[1]),
                    .Z(Z)
                    
                );

endmodule