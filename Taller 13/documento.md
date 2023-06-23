
## Taller Investigativo 13
### Juan Pablo Cerinza Zaraza 2190081

### Stress-ng
La herramienta tiene como uso hacer stress tests de la máquina de maneras diferentes. De forma que se ejerciten diferentes subsistemas de la máquina así como las interfaces del kernel.

#### Stress test CPU

Se inician 4 workers ejercitando la CPU secuencialmente ejecutando todos los diferentes métodos de stress testing de CPU:

	(base) ➜  ~ uptime
	 14:24:45 up 12 min,  1 user,  load average: 0,31, 0,70, 0,51
	(base) ➜  ~ stress-ng --cpu 4 --timeout 60s --metrics-brief
	stress-ng: info:  [7297] setting to a 60 second run per stressor
	stress-ng: info:  [7297] dispatching hogs: 4 cpu
	stress-ng: info:  [7297] successful run completed in 60.00s (1 min, 0.00 secs)
	stress-ng: info:  [7297] stressor       bogo ops real time  usr time  sys time   bogo ops/s     bogo ops/s
	stress-ng: info:  [7297]                           (secs)    (secs)    (secs)   (real time) (usr+sys time)
	stress-ng: info:  [7297] cpu              316669     60.00    239.64      0.05      5277.69        1321.16
	(base) ➜  ~ uptime
	 14:26:19 up 14 min,  1 user,  load average: 2,23, 1,23, 0,72

## Aqui va la grafica de cpu

#### Stress test memory

Let us populate memory. Use mmap N bytes per vm worker, the default is 256MB. One can specify the size as % of total available memory or in units of Bytes, KBytes, MBytes and GBytes using the suffix b, k, m or g:

Se puebla la memoria. Usando nmap N bytes por cada worker vm, el default es 256MB. Se puede especificar el tamaño como porcentaje del total de memoria disponible en diferentes unidades de bytes:

	(base) ➜  ~ stress-ng --cpu 4 --timeout 60s --metrics-brief
	stress-ng: info:  [12728] setting to a 60 second run per stressor
	stress-ng: info:  [12728] dispatching hogs: 2 vm
	stress-ng: info:  [12728] successful run completed in 60.03s (1 min, 0.03 secs)
	stress-ng: info:  [12728] stressor       bogo ops real time  usr time  sys time   bogo ops/s     bogo ops/s
	stress-ng: info:  [12728]                           (secs)    (secs)    (secs)   (real time) (usr+sys time)
	stress-ng: info:  [12728] vm              5405918     60.03    106.84     10.36     90054.30       46125.58

## Aqui va la grafica de memoria

#### Stress test threads

Se puede testear y analizar la proporción de fallas de paginación generando grandes fallas de paginación en una página que no está cargada en memoria. En nuevas versiones de kernel el mecanismo userfaultfd notifica la falla hallando hilos sobre las fallas de paginación en la layout de la memoria virtual de un proceso.

	(base) ➜  ~ stress-ng --userfaultfd 0 --perf -t 1m --metrics-brief
	stress-ng: info:  [14679] setting to a 60 second run per stressor
	stress-ng: info:  [14679] dispatching hogs: 6 userfaultfd
	stress-ng: info:  [14679] successful run completed in 60.01s (1 min, 0.01 secs)
	stress-ng: info:  [14679] stressor       bogo ops real time  usr time  sys time   bogo ops/s     bogo ops/s
	stress-ng: info:  [14679]                           (secs)    (secs)    (secs)   (real time) (usr+sys time)
	stress-ng: info:  [14679] userfaultfd    16775197     60.00      6.53    156.06    279580.42      103174.84
	stress-ng: info:  [14679] userfaultfd:
	stress-ng: info:  [14679]            740.449.023.888 CPU Cycles                     12,34 B/sec
	stress-ng: info:  [14679]            668.999.089.122 Instructions                   11,15 B/sec (0,904 instr. per cycle)
	stress-ng: info:  [14679]            133.538.613.750 Branch Instructions             2,23 B/sec
	stress-ng: info:  [14679]              1.728.703.578 Branch Misses                  28,81 M/sec ( 1,29%)
	stress-ng: info:  [14679]             33.944.215.992 Stalled Cycles Frontend         0,57 B/sec
	stress-ng: info:  [14679]            286.316.487.144 Stalled Cycles Backend          4,77 B/sec
	stress-ng: info:  [14679]             71.140.520.262 Cache References                1,19 B/sec
	stress-ng: info:  [14679]              2.870.147.694 Cache Misses                   47,83 M/sec ( 4,03%)
	stress-ng: info:  [14679]            268.184.971.050 Cache L1D Read                  4,47 B/sec
	stress-ng: info:  [14679]             16.395.183.540 Cache L1D Read Miss             0,27 B/sec
	stress-ng: info:  [14679]              3.976.002.078 Cache L1D Prefetch             66,26 M/sec
	stress-ng: info:  [14679]            195.305.884.140 Cache L1I Read                  3,25 B/sec
	stress-ng: info:  [14679]              5.060.797.926 Cache L1I Read Miss            84,34 M/sec
	stress-ng: info:  [14679]              2.608.781.910 Cache DTLB Read                43,48 M/sec
	stress-ng: info:  [14679]                301.098.258 Cache DTLB Read Miss            5,02 M/sec
	stress-ng: info:  [14679]                    134.346 Cache ITLB Read                 2,24 K/sec
	stress-ng: info:  [14679]                  7.233.438 Cache ITLB Read Miss            0,12 M/sec
	stress-ng: info:  [14679]            133.202.249.316 Cache BPU Read                  2,22 B/sec
	stress-ng: info:  [14679]              1.745.481.300 Cache BPU Read Miss            29,09 M/sec
	stress-ng: info:  [14679]            301.080.091.638 CPU Clock                       5,02 B/sec
	stress-ng: info:  [14679]            301.275.792.030 Task Clock                      5,02 B/sec
	stress-ng: info:  [14679]                 16.629.624 Page Faults Total               0,28 M/sec
	stress-ng: info:  [14679]                        330 Page Faults Minor               5,50 /sec 
	stress-ng: info:  [14679]                 16.629.288 Page Faults Major               0,28 M/sec
	stress-ng: info:  [14679]                 33.431.070 Context Switches                0,56 M/sec
	stress-ng: info:  [14679]                    362.148 Cgroup Switches                 6,04 K/sec
	stress-ng: info:  [14679]                     11.658 CPU Migrations                194,28 /sec 
	stress-ng: info:  [14679]                          0 Alignment Faults                0,00 /sec 
	stress-ng: info:  [14679]                          0 Emulation Faults                0,00 /sec 
	stress-ng: info:  [14679]                 16.629.594 Page Faults User                0,28 M/sec
	stress-ng: info:  [14679]                         30 Page Faults Kernel              0,50 /sec 
	stress-ng: info:  [14679]                 66.713.634 System Call Enter               1,11 M/sec
	stress-ng: info:  [14679]                 66.713.634 System Call Exit                1,11 M/sec
	stress-ng: info:  [14679]                     64.992 Kmalloc                         1,08 K/sec
	stress-ng: info:  [14679]                     64.770 Kmalloc Node                    1,08 K/sec
	stress-ng: info:  [14679]                    137.046 Kfree                           2,28 K/sec
	stress-ng: info:  [14679]                    260.970 Kmem Cache Alloc                4,35 K/sec
	stress-ng: info:  [14679]                        918 Kmem Cache Alloc Node          15,30 /sec 
	stress-ng: info:  [14679]                    268.578 Kmem Cache Free                 4,48 K/sec
	stress-ng: info:  [14679]                 33.289.290 MM Page Alloc                   0,55 M/sec
	stress-ng: info:  [14679]                 33.239.226 MM Page Free                    0,55 M/sec
	stress-ng: info:  [14679]                 67.114.104 RCU Utilization                 1,12 M/sec
	stress-ng: info:  [14679]                     14.034 Sched Migrate Task            233,88 /sec 
	stress-ng: info:  [14679]                          0 Sched Move NUMA                 0,00 /sec 
	stress-ng: info:  [14679]                 17.201.178 Sched Wakeup                    0,29 M/sec
	stress-ng: info:  [14679]                          0 Sched Proc Exec                 0,00 /sec 
	stress-ng: info:  [14679]                          6 Sched Proc Exit                 0,10 /sec 
	stress-ng: info:  [14679]                         12 Sched Proc Fork                 0,20 /sec 
	stress-ng: info:  [14679]                        132 Sched Proc Free                 2,20 /sec 
	stress-ng: info:  [14679]                          0 Sched Proc Hang                 0,00 /sec 
	stress-ng: info:  [14679]                         12 Sched Proc Wait                 0,20 /sec 
	stress-ng: info:  [14679]                 33.431.070 Sched Switch                    0,56 M/sec
	stress-ng: info:  [14679]                        270 Signal Generate                 4,50 /sec 
	stress-ng: info:  [14679]                         18 Signal Deliver                  0,30 /sec 
	stress-ng: info:  [14679]                     31.986 IRQ Entry                     533,05 /sec 
	stress-ng: info:  [14679]                     31.986 IRQ Exit                      533,05 /sec 
	stress-ng: info:  [14679]                     66.372 Soft IRQ Entry                  1,11 K/sec
	stress-ng: info:  [14679]                     66.372 Soft IRQ Exit                   1,11 K/sec
	stress-ng: info:  [14679]                         72 NMI handler                     1,20 /sec 
	stress-ng: info:  [14679]                          0 Writeback Dirty Inode           0,00 /sec 
	stress-ng: info:  [14679]                          0 Migrate MM Pages                0,00 /sec 
	stress-ng: info:  [14679]                          0 SKB Consume                     0,00 /sec 
	stress-ng: info:  [14679]                          0 SKB Kfree                       0,00 /sec 
	stress-ng: info:  [14679]                          0 IOMMU IO Page Fault             0,00 /sec 
	stress-ng: info:  [14679]                          0 IOMMU Map                       0,00 /sec 
	stress-ng: info:  [14679]                      2.004 IOMMU Unmap                    33,40 /sec 
	stress-ng: info:  [14679]                          0 Filemap page-cache add          0,00 /sec 
	stress-ng: info:  [14679]                          0 Filemap page-cache del          0,00 /sec 
	stress-ng: info:  [14679]                          0 OOM Compact Retry               0,00 /sec 
	stress-ng: info:  [14679]                          0 OOM Wake Reaper                 0,00 /sec 
	stress-ng: info:  [14679]                          0 Thermal Zone Trip               0,00 /sec 

