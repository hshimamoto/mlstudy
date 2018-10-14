#!/bin/bash

ugid=$(id -u):$(id -g)

# launch tensorflow docker container
docker run -it --rm \
	-p 8888:8888 \
	-v $PWD:/mlstudy \
	-w /mlstudy \
	-u $ugid \
	mlstudy/tensorflow
