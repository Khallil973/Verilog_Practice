module decoders(A,E,Y_0,Y_1,Y_2,Y_3);

    input [1:0] A;

    input E;

    output Y_0,Y_1,Y_2,Y_3;

    //Defining the combinational logic for the relvent decoder output pins

    assign Y_0 = (~A[0]) & (~A[1]) & (E);

   // assign Y_1 = (~A[0]) & (A[1]) & (E);

    assign Y_1 = (A[0]) & (~A[1]) & (E);

    assign Y_2 = (~A[0]) & (A[1]) & (E);

    assign Y_3 = (A[0]) & (A[1]) & (E);

endmodule