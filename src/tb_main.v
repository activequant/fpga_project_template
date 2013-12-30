`timescale 1ns / 1ns

module test_main;

    reg CLK = 0; 
    wire CLK_INV;

    main mainMod(CLK, CLK_INV);

    initial begin
       $dumpfile ("tb_main.vcd");
       $dumpvars (2, test_main);
       #1000 $finish;
    end
    
    always
    begin 
       $display("Next cycle.");
       #50 CLK = ~CLK;
    end 

endmodule
