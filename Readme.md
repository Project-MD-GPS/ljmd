# GPS organization report

## Setting up the project

**XXX**

## Work subdivision

+ Mandana took care of Force optimization and implementation of Newton's 3rd law. Her report can be found at **XXX**
+ Fernando took care of OpenMP implementation. His report can be found at **XXX**
+ Massimo took care of MPI implementation. His report can be found at **XXX**



## Benchmark of results

### Specifics

The simulation were run on 1,3,6,9,12 nodes of the `regular1` partition in `Ulysses` cluster. The following modules were loaded

    module load cmake/3.15.4
	module load intel/2021.1
	module load openmpi3

+ The Benchmark is executed on the provided `argon_108.*`, `argon_2916.*` and `argon_78732.*` files
+ All simulations are executed on **full** nodes of `regular1` partition in Ulysses. The nodes have the following specifics 
    + Model: IBM System x(R) iDataPlex(R) dx360 M4 Server
    + CPU: 2 x Intel(R) Xeon(R) E5-2680 v2 @ 2.80GHz
    + 2 CPUs with 10C/20T
    + RAM: 40 GiB
+ compiler is `GNU 8.3.0` 
+ flags are `-O3 -ffast-math -fomit-frame-pointer`



### Hybrid OpenMP+MPI implementation

**ADD STUFF**

| Hybrid   | argon_108 | argon_2916 | argon_78732 |
|----------|-----------|------------|-------------|
| OpenMP   | XXX       | XXX        | XXX         |
| 3 nodes  | 0.045s    | 2.720s     | 16.695s     |
| 6 nodes  | 0.053s    | 1.998s     | 8.623s      |
| 9 nodes  | 0.058s    | 1.657s     | 6.082s      |
| 12 nodes | 0.067s    | 1.568s     | 4.867s      |
