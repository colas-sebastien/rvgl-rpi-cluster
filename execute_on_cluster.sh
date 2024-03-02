#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
	exit 1
fi

for cluster_num in 1 2 3 4
do
	echo '*****************'
	echo Working on rvgl-$cluster_num
	echo '*****************'
	ssh rvgl@rvgl-${cluster_num}.local < remote_scripts/rpi_$1.sh
done
