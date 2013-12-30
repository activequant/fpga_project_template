echo "=== Generic project template ==="
export ISE_HOME=/opt/Xilinx/14.7/ISE_DS/ISE/bin/lin/
echo "Using ISE_HOME $ISE_HOME"

# declare the target file ... 
TGT=aqmain
PROFILE=xc3s700an-4-fgg484

# cleanup ... 
rm -rf target
mkdir target

# got to change into target ... 
echo "Changing into target folder to start synthesis ..."
cd target


$ISE_HOME/xst -ifn ../conf/xst.batch 
$ISE_HOME/ngdbuild -p $PROFILE -uc ../src/resources.ucf $TGT.ngc 
$ISE_HOME/map -detail -pr b $TGT.ngd

$ISE_HOME/par -w $TGT.ncd parout.ncd $TGT.pcf
$ISE_HOME/bitgen -w -g StartUpClk:CClk -g CRC:Enable parout.ncd bitfile.bit $TGT.pcf
$ISE_HOME/promgen -w -p bin -o $TGT.bin -u 0 bitfile.bit

$ISE_HOME/impact -batch ../conf/impact.batch

# and back to root folder ... 
echo "Done, returning to root foler ..."
cd ..
