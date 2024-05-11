module if_else(I0,I1,sel,out);
    input I0,I1,sel;
    output reg [1:0]out;


    always @ (I0 or I1 or sel)
    begin
        if (sel == 1'b0)

            out = I0 + I1;
        else 
            out = I0 * I1;       
    end


endmodule
