#!/bin/bash

E_NOARGS=85
E_NOTFOUND=86

if [ $# -eq 0 ]
then
  echo "Usage: `basename $0` filename" >&2
  exit $E_NOARGS
fi

filename=$1

if [ ! -f "$filename" ]
then
  echo "File $filename not found!" >&2
  exit $E_NOTFOUND
fi

for i in {16,32,128,256,512}
do
	echo $i
	sips -Z $i --out {filename##*.}-${i}x${i}.png $filename
	echo $((i*2))
	sips -Z $((i*2)) --out {filename##*.}-${i}x${i}@2x.png $filename
done



