# CodeOne2018_JvmCpuMemory4DockerInProduction
Additional Material for the Oracle CodeOne 2018 Session.


Part I - Memory

cd Memory

run local info (MemoryInfo.java) with java8 and java10.

   ./11_runMemoryInfoLocal.sh
   ./11_runMemoryInfoLocal.sh -usage
   ./11_runMemoryInfoLocal.sh -showVmSettings
   ./11_runMemoryInfoLocal.sh -showVmSettings -setXmsXmx


run MemoryInfo in Java Container (7 .. 11)
   ./12_runAllMemoryInfo.sh
   ./12_runAllMemoryInfo.sh -setMemory1024m
   ./12_runAllMemoryInfo.sh -setCGroupMemoryLimitForHeap

