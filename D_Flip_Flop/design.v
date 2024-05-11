module dflop(clk,rst,D,Q);

    input clk,rst,D;
    output reg Q;

    //this always logic is only use for positive edge cycle in which when positive edge cycle | are come to the clock become high and it will store the memory like Q <= D 
   // Rissing Edge D Flip Flop
    always @(posedge clk) begin
      
      if (rst == 1'b1) begin
            Q <=1'b0;
      end
      else begin

        Q <= D;
      end        

    end

endmodule