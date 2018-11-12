#!/bin/bash

MAIN=MemoryInfo
#MAIN=Main

if [ "$#" = "1" -a "$1" = "-usage" ]; then
  echo "run Java7 ... Java11-Docker with MemoryInfo inside"
  echo "usage: $0"
  echo "usage: $0 -setMemory1024m"
  echo "usage: $0 -setCpus"
  exit 1
fi

if [ "$1" = "-setMemory1024m" ]; then
  ADDITIONAL_OPTS="-m 1024m"
  echo "run with $ADDITIONAL_OPTS"
fi
if [ "$1" = "-setCpus" ]; then
  ADDITIONAL_OPTS="--cpus .5 --cpuset-cpus 1"
  echo "run with $ADDITIONAL_OPTS"
fi

for i in 7 8 9 10 11; do
  echo "====== " openjdk$i " ====="
  docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp $ADDITIONAL_OPTS openjdk:$i ./runJavaCompileAndRun.sh $MAIN
  sleep 3
done
