# CodeOne2018_JvmCpuMemory4DockerInProduction
Additional Material for the Oracle CodeOne 2018 Session.


# Part I - Memory #

cd Memory

## local MemoryInfo.java ##
run local info (MemoryInfo.java) with java8 and java10.

## 11_runMemoryInfoLocal.sh ##
```
   ./11_runMemoryInfoLocal.sh
   ./11_runMemoryInfoLocal.sh -usage
   ./11_runMemoryInfoLocal.sh -showVmSettings
   ./11_runMemoryInfoLocal.sh -showVmSettings -setXmsXmx
```


## 12_runallMemoryInfo.sh ##
```
run MemoryInfo in Java Container (7 .. 11)
   ./12_runAllMemoryInfo.sh
   ./12_runAllMemoryInfo.sh -setMemory1024m
   ./12_runAllMemoryInfo.sh -setCGroupMemoryLimitForHeap
```


## MemEat.java ##
```
docker run --rm -it -v "$PWD":/usr/src/myapp -w /usr/src/myapp openjdk:8 bash ./run.sh MemEat
docker run --rm -it -v "$PWD":/usr/src/myapp -w /usr/src/myapp openjdk:10 bash ./run.sh MemEat
```


## MemoryConsumer.sh ##
```

```


# Part II - CPU #

# Part III - Threads #

