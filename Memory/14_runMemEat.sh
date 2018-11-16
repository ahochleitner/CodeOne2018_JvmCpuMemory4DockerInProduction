#!/bin/bash

#ADDITIONAL_OPTS="-m 1024m"
#ADDITIONAL_OPTS="--memory-swappiness 0"
#ADDITIONAL_OPTS="-XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap"

docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp $ADDITIONAL_OPTS openjdk:8 bash ./runJavaCompileAndRun.sh MemEat

#docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp $ADDITIONAL_OPTS openjdk:$i ./runJavaCompileAndRun.sh $MAIN $RUN_OPTS



