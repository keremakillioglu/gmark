#!/bin/bash

folder="../demo/gsketch/"

cd ../../src
./test -c ../use-cases/gsketch.xml -g "$folder"gsketch-graph.txt -w "$folder"gsketch-workload.xml -r "$folder"

cd querytranslate
./test -w ../"$folder"gsketch-workload.xml -o ../"$folder"gsketch-translated

cd ../queryinterface
./test -w ../"$folder"gsketch-workload.xml -t ../"$folder"gsketch-translated -o ../"$folder"gsketch-interface
