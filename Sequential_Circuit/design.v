module seq(A,B,C,Z,clk,rst);

    input A,B,C,clk,rst;
    output Z;

    wire Result_comb_reg1;
    reg reg1;
    assign Result_comb_reg1 = (A | B) & (C);

    reg reg2;

    wire Result_comb_reg2;
    assign Result_comb_reg2 = reg1;

//    wire Result_comb_reg3;

    //assign Z = ~reg3;


    always @ (posedge clk) begin
      
      if (rst == 1'b1) begin
            reg1 <= 1'b0;
            reg2 <= 1'b0;
      end
      else 
        begin
        reg1 <= Result_comb_reg1;
        reg2 <= Result_comb_reg2;
      end        
    end


    assign Z = (~rst) & (~reg2);



endmodule