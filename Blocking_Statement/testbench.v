module tb();

    //declaring variables
    reg A,B,clk,rst;
    wire Q;

    //declaring design

    non_blocking dut (  
                        .clk(clk),
                        .rst(rst),
                        .A(A),
                        .B(B),
                        .Q(Q)

    );

    //generate clk

    always begin
        clk <= 1'b0;
        #50;
        clk <= 1'b1;
        #50;
    
    end

    //stimulas

    initial begin
        rst <= 1'b1;
        A <= 1'b0;
        B <= 1'b0;
        #100;

        rst <= 1'b0;
        A <= 1'b0;
        B <= 1'b1;
        #100;        

        A <= 1'b1;
        B <= 1'b0;
        #100;

        A <= 1'b1;
        B <= 1'b1;
        #100;

        $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0);
    end

endmodule



