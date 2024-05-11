module concatenate(A,B,C,D);

    //declaring the inpus
    input [1:0] A;
    input [3:0] B;

    //declaring the outputs
    output [7:0] C;
    output [15:0] D;


    //interim signals 

    // module initiation

    //design Logic

    // C = concatenate (2'b00, A, 2'b11) ===> MEANS that we add first value 2'b00 from our end and "B" as given as an input and 2'b11,so we want to concatenate the in value as i provided in testbench in stimulas

    assign C = {2'b00, B, 2'b11};

    //D = concatenate {A * 8} using the REPLICATION method
    assign D = {8{A}};


endmodule