#include <mdlib.h>
#include <math.h>


/* helper function: apply minimum image convention */
static double pbc(double x, const double boxby2)
{
    while (x >  boxby2) x -= 2.0*boxby2;
    while (x < -boxby2) x += 2.0*boxby2;
    return x;
}

/* compute forces based on Lenard Jones potential */
void force(mdsys_t *sys)
{
    double r,ffac;
    double rx,ry,rz;
    int i,j;
    //new variables for the optimization
    double c12,c6,rcsq, rsq, rm6, rm2;
    /* zero energy and forces */
    sys->epot=0.0;
    azzero(sys->fx,sys->natoms);
    azzero(sys->fy,sys->natoms);
    azzero(sys->fz,sys->natoms);

    //remove the expensive sqrt(), pow() and division functions from the inner loop
    c12=4.0*sys->epsilon*pow(sys->sigma,12.0); //c12 is the 12th power of sigma
    c6 =4.0*sys->epsilon*pow(sys->sigma, 6.0); //c6 is the 6th power of sigma
    rcsq=sys->rcut*sys->rcut; //square of the cutoff radius


    for(i=0; i < (sys->natoms); ++i) {
        for(j=i+1; j < (sys->natoms); ++j) { // The original code was j=0, which means that the force on particle i was computed twice. This is fixed by starting the loop at j=i+1

            /* particles have no interactions with themselves */
           // if (i==j) continue; //it will be useless, since j starts from i+1

            /* get distance between particle i and j */
            rx=pbc(sys->rx[i] - sys->rx[j], 0.5*sys->box);
            ry=pbc(sys->ry[i] - sys->ry[j], 0.5*sys->box);
            rz=pbc(sys->rz[i] - sys->rz[j], 0.5*sys->box);
            rsq = rx*rx + ry*ry + rz*rz;  //remove the expensive sqrt() function from the inner loop

            /* compute force and energy if within cutoff */
           if (rsq < rcsq) {
                //remove the expensive pow() and division functions from the inner loop
                double rm6,rm2; rm2=1.0/rsq; rm6=rm2*rm2*rm2;
                ffac = (12.0*c12*rm6 - 6.0*c6)*rm6*rm2;
                sys->epot += rm6*(c12*rm6 - c6); //here it is not necessary to multiply by 0.5, since the force is computed once for each pair of particles

                /*ffac = -4.0*sys->epsilon*(-12.0*pow(sys->sigma/r,12.0)/r
                                         +6*pow(sys->sigma/r,6.0)/r);

                sys->epot += 0.5*4.0*sys->epsilon*(pow(sys->sigma/r,12.0)
                                               -pow(sys->sigma/r,6.0)); //here it is necessary to multiply by 0.5, since the force is computed twice for each pair of particles
                */
                sys->fx[i] += rx*ffac; // remove division based on previous changes
                sys->fy[i] += ry*ffac;
                sys->fz[i] += rz*ffac;
                // The following lines are added to the original code to consider the force on the other particle and implement Newton's third law
                sys->fx[j] -= rx*ffac;  // remove division ...
                sys->fy[j] -= ry*ffac;
                sys->fz[j] -= rz*ffac;
            }
        }
    }
}

/*compute force based on morse potential*/
void morse_force(mdsys_t *sys)
{
    /*compute force based on morse potential with cutoff for bond:
    V(r) = D*(1-exp(-a*(r-r0)))^2; r0=1.5, D=1.0, a=1.0
    On the other hand, there is a pair potential:
    V(r) = 2.0*D*a*(1.0-exp(-a*(r-r0)))*exp(-a*(r-r0)); r0=1.5, D=1.0, a=1.0
    */
    double a, r0,rcut, D;
    double rx,ry,rz;
    int i,j;
    /* zero energy and forces */
    sys->epot=0.0;
    azzero(sys->fx,sys->natoms);
    azzero(sys->fy,sys->natoms);
    azzero(sys->fz,sys->natoms);

    //rcsq=sys->rcut*sys->rcut; //square of the cutoff radius
    rcut = sys->rcut;
    D = sys->epsilon;
    r0 = sys->sigma*pow(2.0,1.0/6.0);
    a = 2.0;
    for(i=0; i < (sys->natoms); ++i) {
        for(j=i+1; j < (sys->natoms); ++j) { // The original code was j=0, which means that the force on particle i was computed twice. This is fixed by starting the loop at j=i+1

            /* particles have no interactions with themselves */
           // if (i==j) continue; //it will be useless, since j starts from i+1

            /* get distance between particle i and j */
            rx=pbc(sys->rx[i] - sys->rx[j], 0.5*sys->box);
            ry=pbc(sys->ry[i] - sys->ry[j], 0.5*sys->box);
            rz=pbc(sys->rz[i] - sys->rz[j], 0.5*sys->box);
            double r = sqrt(rx*rx + ry*ry + rz*rz);  //remove the expensive sqrt() function from the inner loop

            /* compute force and energy if within cutoff */
           if (r < rcut) {
                /*force between 2 atoms */    
                //double ffac = -2.0*D*a*(1.0-exp(-a*(r-r0)))*exp(-a*(r-r0))/r;
               /*morse force pair wise: smooth version based on formulas in https://docs.lammps.org/pair_morse.html*/
                double ffac = D*(exp(-2.0*a*(r-r0))-2.0*exp(-a*(r-r0))) - D*(exp(-2.0*a*(rcut-r0))-2.0*exp(-a*(rcut-r0))) - (r - rcut)*(-2.0*a*D*exp(-2.0*a*(rcut-r0))+2.0*D*a*exp(-a*(rcut-r0)));
                /*morse energy pair wise*/        
                sys->epot +=  D*(exp(-2.0*a*(r-r0))-2.0*exp(-a*(r-r0)));
                
                sys->fx[i] += rx*ffac; // remove division based on previous changes
                sys->fy[i] += ry*ffac;
                sys->fz[i] += rz*ffac;
                // The following lines are added to the original code to consider the force on the other particle and implement Newton's third law
                sys->fx[j] -= rx*ffac;  // remove division ...
                sys->fy[j] -= ry*ffac;
                sys->fz[j] -= rz*ffac;
            }
        }
    }
}