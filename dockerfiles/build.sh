#!/bin/bash

d=$(dirname $0)

list=$(find $d -name Dockerfile)

for f in $list
do
	path=$(dirname $f)
	cname=$(basename $path)
	echo $cname
	docker build -t mlstudy/$cname $path
done
