module tb();

    //VARIABLES
    reg [31:0] A,B;
    wire [31:0] C;
    
    //DECLARE Design under test
    //we use parameterized #(.WIDTH(32))before dut because this is the syntex to use the parameter
    //The main purpose of this if i want 16 bit so simply change 32 bit to 16, without change any other function in code

    parameterized #(.WIDTH(16)) dut (
                                        .A(A),
                                        .B(B),
                                        .C(C)
    );

//We can only use other dut to check the comparison between two parameters
    parameterized #(.WIDTH(8)) dut_1(
                                        .A(A),
                                        .B(B),
                                        .C(C)
    );

    //STIMULAS
    initial begin
      A <= 32'h00000001;
      B <= 32'h00000002;
      #100;
    end

    //DAMP COMMAND
    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0);
    end

endmodule