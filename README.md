== Goal 

Provide an easy starting point for FPGA based applications which interact with their environment through a set of 
well defined communication interfaces. The FPGA serves as a specialized computing environment. 

== Introduction 

This folder structure contains my project template for Xilinx based projects. 

I use it heavily for my Spartan 3AN projects which I developed on Linux without the ISE IDE. 

For synthesizing code, the board vendor's tool chain is needed, for example Xilinx' tool chain (xst, impact, etc.). 

Requirements: 

- iverilog
- vvp
- gtkwave (or similar wave viewers)
- Xilinx toolchain + Xilinx FPGA board


To start: 
- Modify compile.sh and set the environment variables in it. 
- Modify test.sh and set the source files that you want to test
- Modify the sources.prj file to include all source files, retain the "../" infront of source list entries as these will be relative to ./target/. 

Put all source files into the ./src folder. 
The compile script will create a target folder so that it won't clutter your work directory. 
The compile script will also flash your FPGA, uncomment the last line if you don't want this behaviour. 
The scripts expect the top level to be called "main"

In order to use a different Xilinx FPGA board, set the appropriate profile in compile.sh, the rest should work ...

So, how does a usual development flow look like? I use KDevelop3 to write my verilog code, then I run consecutively run my 
test benches until the wave forms match what I expect. Regularly, I run compile.sh to ensure that all code is still 
synthesizable. 

Fork at will, contributions welcome. 

Happy hacking, 
Ulrich
