#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Illegal number of parameters"
	exit 1
fi

cluster_num=$1
command=$2


echo '*****************'
echo Working on rvgl-${cluster_num}
echo '*****************'
ssh rvgl@rvgl-${cluster_num}.local < remote_scripts/rpi_${command}.sh
