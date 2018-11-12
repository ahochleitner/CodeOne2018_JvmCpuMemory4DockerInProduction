#!/bin/bash
#ADDITIONAL_OPTS="-m 1024m"
#ADDITIONAL_OPTS="--cpus .5 --cpuset-cpus 1"

MAIN=MemoryInfo
#MAIN=Main

for i in 7 8 9 10 11; do
  echo "====== " openjdk$i " ====="
  docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp $ADDITIONAL_OPTS openjdk:$i ./runJavaCompileAndRun.sh $MAIN
  sleep 3
done
