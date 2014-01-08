
rm -rf target
mkdir target

# generic test function for running a verilog test class
function runtest {
  echo "Running test bench >>$1<<"
  testOutFile="target/output_$1"
  testOutFileLog="target/output_$1.log"
  iverilog -o $testOutFile $2
  vvp $testOutFile > $testOutFileLog
  errorFound=`grep "Error" $testOutFileLog`
  echo $errorFound
}


echo "=========== Test bench runner ============="
echo "Running tests ... "



# now, let's run the test cases. 
runtest "tb_main" "src/main.v src/tb_main.v"


echo "================= Done ===================="


