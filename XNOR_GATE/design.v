module gate (A,B,Y,C);

    input  A,B;
    output Y,C;


    xnor (Y,A,B);
    buf (C,A);

endmodule    