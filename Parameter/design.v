module parameterized #(parameter WIDTH = 32) (A,B,C);

    input [WIDTH-1:0] A,B;
    output [WIDTH-1:0] C;


        //basically we write the code of ADDER to check the working of parameter in module
    assign C = A + B;

endmodule