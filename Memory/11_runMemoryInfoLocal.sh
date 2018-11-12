#!/bin/bash

if [ "$#" = "1" -a "$1" = "-usage" ]; then
  echo "run javac and java both with JAVA8_HOME and JAVA10_HOME"
  echo "usage: $0"
  echo "usage: $0 -showVmSettings"
  echo "usage: $0 -showVmSettings -setXmsXmx"
  exit 1
fi

if [ "$1" = "-showVmSettings" ]; then
  ADDITIONAL_PARAMS="-XshowSettings:vm"
  echo "run with $ADDITIONAL_PARAMS"
fi
if [ "$2" = "-setXmsXmx" ]; then
  ADDITIONAL_PARAMS2="-Xms1024k -Xmx2048k "
  echo "run with $ADDITIONAL_PARAMS2"
fi

echo "JAVA8 ........................."
$JAVA8_HOME/bin/javac MemoryInfo.java 
$JAVA8_HOME/bin/java $ADDITIONAL_PARAMS $ADDITIONAL_PARAMS2 MemoryInfo

echo "JAVA9 ........................."
$JAVA9_HOME/bin/javac MemoryInfo.java 
$JAVA9_HOME/bin/java $ADDITIONAL_PARAMS $ADDITIONAL_PARAMS2 MemoryInfo

echo "JAVA10 ........................."
$JAVA10_HOME/bin/javac MemoryInfo.java 
$JAVA10_HOME/bin/java $ADDITIONAL_PARAMS $ADDITIONAL_PARAMS2 MemoryInfo

