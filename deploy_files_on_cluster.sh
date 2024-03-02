#!/bin/bash

for cluster_num in 1 2 3 4
do
	echo '*****************'
	echo Working on rvgl-$cluster_num
	echo '*****************'
	rsync -vra to-deploy/ rvgl@rvgl-${cluster_num}.local:
    echo

done