#!/bin/sh

runfailure="./failure.sh"

count=1
$runfailure > stdout 2> magic
while [[ $? -eq 0 ]]
do
    count=$((count + 1))
    $runfailure > stdout 2> magic
done
cat stdout
cat magic
echo "failed: $count times"


