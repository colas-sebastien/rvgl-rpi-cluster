#!/bin/bash

amixer cset numid=3 2
sleep 4
/home/rvgl/rvgl/packs/rvgl_linux/rvgl -basepath /home/rvgl/rvgl -prefpath /home/rvgl/rvgl/save -packlist default -nop2p -sessionlog -nointro -nopause -profile vas0sky
