module  gate(A,B,Y);

    input A,B;
    output Y;


    nand (Y,A,B);
    //not (Yd. Y);

endmodule