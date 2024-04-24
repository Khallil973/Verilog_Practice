module half_adder(A,B,S,C);

     input A,B;
     output S,C;


    //assign the gates 
    //using data flow modeling

     //assign S = A ^B; // A xor B
     //assign C = A & B;// A and B

    //using gate level modeling
    xor (S,A,B);
    and (C,A,B);


endmodule