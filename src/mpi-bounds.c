#include <mdlib.h>

void mpi_bounds(mdsys_t *sys) {

    /* compute sys->istart and sys->iend for each mpi process, dividing main i-loop */
    int isize[2], chunk[2];

    chunk[0] = sys->natoms/2 + sys->natoms%2;
    chunk[1] = sys->natoms - chunk[0];

    isize[0] = chunk[0]/sys->nsize;
    if ( sys->mpirank < chunk[0]%sys->nsize) {
        isize[0]++;
        sys->istart[0] = sys->mpirank*isize[0];
        sys->iend[0]   = sys->istart[0] + isize[0];
    } else {
        sys->istart[0] = sys->mpirank*isize[0] + chunk[0]%sys->nsize;
        sys->iend[0]   = sys->istart[0] + isize[0];
    }
    
    isize[1] = chunk[1]/sys->nsize;
    if ( (sys->nsize - sys->mpirank - 1) < chunk[1]%sys->nsize) {
        isize[1]++;
        sys->istart[1] = (sys->nsize - sys->mpirank - 1)*isize[1] + chunk[0];
        sys->iend[1]   = sys->istart[1] + isize[1];
    } else {
        sys->istart[1] = (sys->nsize - sys->mpirank - 1)*isize[1] + chunk[1]%sys->nsize + chunk[0];
        sys->iend[1]   = sys->istart[1] + isize[1];
    }
}