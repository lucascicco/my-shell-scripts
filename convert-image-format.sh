#!bin/bash

DIR=$1
INPUT=$2
OUTPUT=$3
shift 3

ARGS=$@

echo "dir: $DIR"
echo "image type INPUT: $INPUT"
echo "image type OUTPUT: $OUTPUT"

for i in ${DIR}/*.${INPUT}; do
  convert $i `echo $i | sed "s/.${INPUT}/.${OUTPUT}/g"` $ARGS 
  rm $i
done
