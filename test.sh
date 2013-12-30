mkdir target

iverilog -o target/tb_main src/tb_main.v src/main.v
vvp target/tb_main

