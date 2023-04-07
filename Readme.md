# GPS organization report



## Setting up the project

For the GitHub setup we created an ad-hoc organization. This was done to circumvent the annoyance of not being able of forking one's own repository. We implemented *cmake workflow* actions as well as *main branch protection*, requiring approval by all members of the organization before any merge. We took great advantage of *in person* meetings for planning ahead.



## Work subdivision

+ Mandana took care of Force optimization and implementation of Newton's 3rd law. Her report can be found at https://github.com/Project-MD-GPS/ljmd/blob/optim%2Bmorse/reports/report_opt.md, see also https://github.com/Project-MD-GPS/ljmd/blob/optim%2Bmorse/reports/report_morse.md for Morse potential implementation
+ Fernando took care of OpenMP implementation. His report can be found at https://github.com/Project-MD-GPS/ljmd/blob/openmp/report-openmp.md
+ Massimo took care of MPI implementation. His report can be found at https://github.com/MGisonni/ljmd/blob/Final_commit/reports/Individual%20Task%20Report.md, its cell implementation at https://github.com/MGisonni/ljmd/blob/Final_commit/reports/Extra%20Tasks%20Report.md



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

The final version comes equipped with Force optimization, Newton's 3rd law implementation and hybrid OpenMP and MPI implementation. The result is a merge of each individual contribution, in particular: OpenMP is implemented using a *private copy* of the forces array; MPI is implemented with *Balanced chunks*. We refer to the individual reports for further details.

| Hybrid   | argon_108 | argon_2916 | argon_78732 |
|----------|-----------|------------|-------------|
| 3 nodes  | 0.045s    | 2.720s     | 16.695s     |
| 6 nodes  | 0.053s    | 1.998s     | 8.623s      |
| 9 nodes  | 0.058s    | 1.657s     | 6.082s      |
| 12 nodes | 0.067s    | 1.568s     | 4.867s      |
