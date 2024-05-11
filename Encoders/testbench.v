module tb();

    reg Y3,Y2,Y1,Y0;

    wire A1,A0;

    enocders dut (

                    .Y3(Y3),
                    .Y2(Y2),
                    .Y1(Y1),
                    .Y0(Y0),
                    .A1(A1),
                    .A0(A0)
    );

    initial begin
        Y0 = 1'b1;
        Y1 = 1'b0;
        Y2 = 1'b0;
        Y3 = 1'b0;
        #100;

        Y0 = 1'b0;
        Y1 = 1'b1;
        Y2 = 1'b0;
        Y3 = 1'b0;
        #100;

        Y0 = 1'b0;
        Y1 = 1'b0;
        Y2 = 1'b1;
        Y3 = 1'b0;
        #100;

        Y0 = 1'b0;
        Y1 = 1'b0;
        Y2 = 1'b0;
        Y3 = 1'b1;
        #100;    

    end

    initial begin

        $dumpfile("dump.vcd");
        $dumpvars(0);

    end


endmodule