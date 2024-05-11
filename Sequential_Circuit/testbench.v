module tb();

    reg A,B,C,clk,rst;
    wire Z;

    seq dut (
                .A(A),
                .B(B),
                .C(C),
                .clk(clk),
                .rst(rst),
                .Z(Z)

    );

    initial begin
    
        $dumpfile("dump.vcd");
        $dumpvars(0);


    end

    always begin
    clk <= ~clk;
    #50;
  //  #50;
   // clk <= 1'b1;
    
    end

    initial begin

        A = 1'b0;
        B = 1'b0;
        C = 1'b0;
        clk = 1'b0;
        rst = 1'b1;
        #100;

        rst = 1'b0;
        A = 1'b0;
        B = 1'b1;
        C = 1'b1;
        clk = 1'b0;
        #100;

        A = 1'b1;
        B = 1'b0;
        C = 1'b0;
        #100;

        A = 1'b1;
        B = 1'b1;
        C = 1'b0;
        #100;  

        A = 1'b1;
        B = 1'b1;
        C = 1'b1;
        #100; 

        $finish;
    end

endmodule