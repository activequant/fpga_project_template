// THIS IS THE MAIN MODULE. 

module main(input CLK, output CLK_INV);

   reg _clkInv = 0; 

   always @*
   begin    
      _clkInv = ~CLK;
   end 

   assign CLK_INV = _clkInv; 

endmodule 
