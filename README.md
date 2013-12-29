This folder structure contains my project template for Xilinx based projects. 
I use it heavily for my Spartan 3AN projects which I developed on Linux without the ISE IDE. 
For synthesizing code, Xilinx' tool chain (xst, impact, etc.) is required. 

Requirements: 

- iverilog
- vvp
- gtkwave (or similar wave viewers)
- Xilinx toolchain 


To start: 
- Modify compile.sh and set the environment variables in it. 
- Modify test.sh and set the source files that you want to test
- Modify the sources.prj file to include all source files, retain the "../" infront of source list entries as these will be relative to ./target/. 

Put all source files into the ./src folder. 
The compile script will create a target folder so that it won't clutter your work directory. 
The compile script will also flash your FPGA, uncomment the last line if you don't want this behaviour. 

In order to use a different Xilinx FPGA board, set the appropriate profile in compile.sh, the rest should work ...


Fork at will, contributions welcome. 

Happy hacking, 
Ulrich


