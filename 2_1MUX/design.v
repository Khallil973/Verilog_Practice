module mux(A,B,S,Y);

    //declaring the input
    //Using A AND B as 2 bit input
    input S;
    input [1:0] A,B;

    //declaring output
    output [1:0] Y;


    //declaring interim signals

    //module initiation 

    //Logic Design
    //Ternary Operator
    // (condition) ? first_value : second_value
    assign Y = (S == 1'b0) ? A : B;


endmodule