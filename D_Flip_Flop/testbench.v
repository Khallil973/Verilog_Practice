module tb();
    reg clk,rst,D;
    wire Q;


    dflop dut(
                .clk(clk),
                .rst(rst),
                .D(D),
                .Q(Q)
    );
//Generate Clock
    always begin
        clk <=1'b0;
        #50;
        clk <=1'b1;
        #50;

    end

    initial begin
        rst <= 1'b1;
        #100;
        D <= 1'b1;
        #100;
        D <= 1'b0;
        #100;
        $finish;

    end


    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0);   

    end

endmodule