#ifndef MDLIB_MPI_H
#define MDLIB_MPI_H

// for MPI
#include <mpi.h>

/* structure to hold the complete information
 * about the MD system */
struct _mdsys {
    int natoms,nfi,nsteps,nprint;
    double dt, mass, epsilon, sigma, box, rcut;
    double ekin, epot, temp;
    double *rx, *ry, *rz;
    double *vx, *vy, *vz;
    double *fx, *fy, *fz;
    // for MPI parallelization we need extra variables
    MPI_Comm mpicomm;
    int nsize, mpirank;
    int istart[2], iend[2];
    double *fx_mpi, *fy_mpi, *fz_mpi;
};

typedef struct _mdsys mdsys_t;

// compute forces
void force_mp(mdsys_t *sys, double* omp_forces);
void force(mdsys_t *sys);
// compute bounds for mpi parallelization
void mpi_bounds(mdsys_t *sys);

#endif
