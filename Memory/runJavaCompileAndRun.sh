#!/bin/bash


if [ "$#" != "1" -a "$#" != "2" ]; then
  echo "usage: $0 JavaClass"
  echo "          compile and run JavaClass"
  echo "       $0 JavaClass -setCGroupMemoryLimitForHeap"
  echo "       $0 JavaClass -setGCThreads"
  exit 1
fi

if [ "$#" != "1" -a "$2" = "-setCGroupMemoryLimitForHeap" ]; then
  JAVA_OPTS="-XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap"
fi
if [ "$#" != "1" -a "$2" = "-setGCThreads" ]; then
  JAVA_OPTS="-XX:ParallelGCThreads=1 -XX:CICompilerCount=2"
fi


javac $1.java
java $JAVA_OPTS $1

