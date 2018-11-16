#!/bin/bash
#ADDITIONAL_OPTS="--cpus .5"
#ADDITIONAL_OPTS="--cpus .5 --cpuset-cpus 1"

MAIN=CpuBench
#MAIN=Main

for i in 7 8 9 10; do
  echo "====== " openjdk$i " ====="
  docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp $ADDITIONAL_OPTS openjdk:$i ./run.sh $MAIN
  sleep 3
done
