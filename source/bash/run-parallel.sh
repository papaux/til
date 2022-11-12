#!/bin/bash

PARALLELISM=4
i=0

function timed_run() {
    start=`date +%s`
    $@
    end=`date +%s`
    runtime=$( echo "$end - $start" | bc -l )
    echo "Completed in $runtime seconds"
}

function execute_parallel() {
    ((i=i%PARALLELISM)) || true; ((i++==0)) && wait
    timed_run $@ &
}

for u in {1..20}; do
  execute_parallel sleep 3
done

wait
