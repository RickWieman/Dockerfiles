#!/bin/bash

if ! [ "$#" -eq 3 ]; then
	echo "USAGE: runner.sh <number_of_threads> <duration> <server>"
	exit 1;
fi

echo "-- Generating configuration file..."
cat template.jmx | sed -e "s/@NUM_THREADS@/$1/" | sed -e "s/@DURATION@/$2/" | sed -e "s/@SERVER@/$3/" > temp_run.jmx
mkdir -p ./results

echo "-- Running JMeter with $1 threads for $2 seconds on server $3."
jmeter -n -t ./temp_run.jmx -l ./results/result_$3_$1_$2.log

echo "-- Removing configuration file..."
rm temp_run.jmx

echo "-- Done."