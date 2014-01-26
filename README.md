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

== Platform structure

The platform is compound out of several basic components so that it becomes easy to start a new FPGA project with 
one of the supported development boards. 

At present, this platform is built around light weight verilog components, which are usually visually 
unit tested during development. It is possible to use these verilog components in conjunction with VHDL, etc.

Central to this platform is a bus system. This bus system is a very simple 80 bit bus, to which bus components connect. 
These bus components are relatively simple components, behind which arbitrarily complex modules reside. 

It has a communication layer, which is used for control commands and for generic data exchange with the outside world, 
such as an RS232 or a USB communication port. In the future, this should contain some easy-to-configure support 
for a network interface. 







