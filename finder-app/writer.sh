#!/bin/sh

echo running writer script
echo ===============================

#comparing number of arguments passed through commandline
if [ $# -ne 2 ] 
then
	echo "Incorrect number of parameters (expected 2 : <writefile> <writestr>)"
	exit 1
fi

writefile=$1
writestr=$2

ret=$(printf $writestr > $writefile)
echo $ret

