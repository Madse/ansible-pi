#!/bin/bash
clear

vcgencmd measure_temp

for f in {1..10}
do
    vcgencmd measure_temp
    sysbench cpu --cpu-max-prime=5000 --threads=4 --time=120 run >/dev/null 2>&1
done

vcgencmd measure_temp
