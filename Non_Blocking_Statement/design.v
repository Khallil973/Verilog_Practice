module non_blocking(A,B,Q,clk,rst);

    input A,B,clk,rst;
    output reg Q;
    //We declaring the another reg = Z
    reg Z;

    always @ (posedge clk) begin
        if(rst == 1'b1) begin
            Z <= 1'b0;
            Q <= 1'b0;
        
        end
        else begin
            Z <= A | B;
            Q <= Z;
        end      
    end 
 
endmodule