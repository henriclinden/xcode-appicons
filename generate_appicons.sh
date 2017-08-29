#!/usr/bin/env bash

# set -x

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
	sips -Z $i --out ${filename%.*}-${i}x${i}.png $filename
	sips -Z $((i*2)) --out ${filename%.*}-${i}x${i}@2x.png $filename
done

for i in {20,29,40,60,76}
do
	sips -Z $i --out ${filename%.*}-${i}x${i}.png $filename
	sips -Z $((i*2)) --out ${filename%.*}-${i}x${i}@2x.png $filename
	sips -Z $((i*3)) --out ${filename%.*}-${i}x${i}@3x.png $filename
done

sips -Z 167 --out ${filename%.*}-83.5x83.5@2x.png $filename


