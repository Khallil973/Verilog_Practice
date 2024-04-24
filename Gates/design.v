module gate(A,B,Y);

    //declaring input
    input A,B;

    //Declaring output
    output Y;

    //gate level modeling
    //function name(port,list)
    //             (Output,input)

    and(Y,A,B);

endmodule   
