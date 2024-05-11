module Module_2(Input_1_Module_2,Input_2_Module_2,Z);

input Input_1_Module_2,Input_2_Module_2;
output Z;

assign Z =  (~(Input_1_Module_2 | Input_2_Module_2) & (Input_1_Module_2 & Input_2_Module_2));

endmodule