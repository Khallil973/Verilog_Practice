module tb();

    reg A;
    wire Y;

    gate dut (

                .A(A),
                .Y(Y)

    );

    initial begin
        A <= 1'b0;
        #100;

        A <= 1'b1;
        #100;

    end

    initial begin
        $dumpfile("dump.vsd");
        $dumpvars(0);


    end    

 endmodule   