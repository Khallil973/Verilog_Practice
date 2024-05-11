module enocders(Y3,Y2,Y1,Y0,A1,A0);
    
    input Y3,Y2,Y1,Y0;
    output A1,A0;


    assign A1 = Y2 | Y3;
    assign A0 = Y1 | Y3;

    
endmodule
