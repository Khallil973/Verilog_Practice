module tb();

    //Declare variables

    reg A,B;
    wire Y;

    //design call //module initiation
    //module name user name signal
    //dut = design under test
    gate dut (
                .A(A),
                .B(B),
                .Y(Y)

    );

    //privide stimulas
    initial begin
        A <= 1'b0;
        B <= 1'b0;
        #100;

        A <= 1'b0;
        B <= 1'b1;
        #100;

        A <= 1'b1;
        B <= 1'b0;
        #100;

        A <= 1'b1;
        B <= 1'b1;
        #100;

    end


        //for visualization

        initial begin
            $dumpfile("dump.vsd");
            $dumpvars(0);

        end

endmodule            