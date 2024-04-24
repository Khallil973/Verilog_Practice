module tb();

    reg A,B;
    wire Y;

    gate dut(
                .A(A),
                .B(B),
                .Y(Y)
    );

    //PROVIDE STIMULAS

    initial begin
      A <= 1'b0;
      B <= 1'b0;
      #100;

      A <= 1'b1;
      B <= 1'b0;
      #100;

      A <= 1'b0;
      B <= 1'b1;
      #100;

      A <= 1'b1;
      B <= 1'b1;
      #100;

    end

        initial begin
            $dumpfile("dump.vsd");
            $dumpvars(0);

        end

endmodule        