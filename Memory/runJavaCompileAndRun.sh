#!/bin/bash

#JAVA_OPTS="-XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap"
#JAVA_OPTS="-XX:ParallelGCThreads=1 -XX:CICompilerCount=2"

if [ "$#" != "1" ]; then
  echo "usage: $0 JavaClass"
  echo "          compile and run JavaClass"
  exit 1
fi

javac $1.java
java $JAVA_OPTS $1

