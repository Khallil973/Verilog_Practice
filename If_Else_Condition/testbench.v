module tb();
    reg I0,I1,sel;
    wire [1:0]out;


    if_else dut (
                   .I0(I0),
                   .I1(I1),
                   .sel(sel),
                   .out(out) 
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0);
    end

    initial begin

        I0 = 1'b0;
        I1 = 1'b0;
        sel = 1'b0;
        #50;

        I0 = 1'b0;
        I1 = 1'b1;
        sel = 1'b1;
        #100;

        I0 = 1'b1;
        I1 = 1'b1;
        sel = 1'b0;
        #150;

        I0 = 1'b1;
        I1 = 1'b1;
        sel = 1'b1;
        #200;

        $finish;
                      
                              

    end    
endmodule