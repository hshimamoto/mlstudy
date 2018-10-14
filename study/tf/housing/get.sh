#!/bin/bash

# https://archive.ics.uci.edu/ml/machine-learning-databases/housing/
curl -O https://archive.ics.uci.edu/ml/machine-learning-databases/housing/housing.data

echo "crim zn indus chas nox rm age dis rad tax ptratio b lstat medv" > housing.csv
cat housing.data >> housing.csv

sed -i -e 's/^ \+//' -e 's/ \+/,/g' housing.csv
