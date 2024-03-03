#!/bin/bash

config_file=$HOME/.config/rvmm/config.json
data_dir=`cat $config_file | jq '."data-dir"' | sed 's/"//g'`
echo $data_dir

for cluster_num in 1 2 3 4
do
	echo '*****************'
	echo Working on rvgl-$cluster_num
	echo '*****************'
	rsync -vra --delete $data_dir/packs rvgl@rvgl-${cluster_num}.local:rvgl
    echo
done