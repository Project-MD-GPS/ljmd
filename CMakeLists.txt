# CMake build for P2.1 code
cmake_minimum_required(VERSION 3.10)
project(ljmd VERSION 3.0 LANGUAGES C CXX) 
set(CMAKE_BUILD_TYPE RelWithDebInfo Release) 

find_package(OpenMP REQUIRED)#COMPONENTS CXX QUIET)
if (OpenMP_FOUND)
	message(STATUS "OpenMP found")
	set(BUILD_OMP_DEFAULT ON)
endif()


# include directory for header files
include_directories(include)


message(" Will compile serial version")
# Add executable 
add_executable(ljmd-serial.x src/ljmd-serial.c)

add_library(mdlib-util src/utilities.c src/verlet_ti.c src/energies.c src/input.c src/output.c src/reading.c)
# compile options for library
target_compile_options(mdlib-util PRIVATE -Wall -g -O3 -ffast-math -fomit-frame-pointer -DLJMD_VERSION=3.0)    # link libraries
    target_link_libraries(ljmd-serial.x m)
    target_link_libraries(ljmd-serial.x mdlib-util mdlib-serial)

target_compile_options(ljmd-serial.x PRIVATE -Wall -pedantic -g -O3 -ffast-math -fomit-frame-pointer -DLJMD_VERSION=3.0)
add_library(mdlib-serial src/forces-serial.c)
target_link_libraries(mdlib-serial m mdlib-util)


find_package(MPI)
# if found we built the parallel version
if (MPI_FOUND)
    message(MPI_FOUND " This application will compile with MPI")
    # Add executable 
    add_executable(ljmd.x src/ljmd-mpi.c)
    # compile options
    target_compile_options(ljmd.x PRIVATE -Wall -g -O3 -fopenmp -ffast-math -fomit-frame-pointer -DLJMD_VERSION=3.0 -DMPIYES)
    # add library for force computation
    add_library(mdlib-mpi src/forces-mp-mpi.c src/mpi-bounds.c)
    target_link_libraries(mdlib-mpi m MPI::MPI_CXX)
    # compile options for library
    target_compile_options(mdlib-mpi PRIVATE -Wall -g -O3 -fopenmp -ffast-math -fomit-frame-pointer -DLJMD_VERSION=3.0 -DMPIYES)
# add common library to serial and parallel version
#add_library(mdlib-util src/utilities.c src/verlet_ti.c src/energies.c src/input.c src/output.c src/reading.c src/mpi-bounds.c)
# compile options for library
target_link_libraries(mdlib-util m MPI::MPI_CXX)
target_compile_options(mdlib-util PRIVATE -Wall -g -O3 -ffast-math -fomit-frame-pointer -DLJMD_VERSION=3.0 -DMPIYES)
    # link libraries to executable
    target_link_options(ljmd.x PRIVATE -fopenmp)
    target_link_libraries(ljmd.x mdlib-util mdlib-mpi)
# else we build the serial version
endif (MPI_FOUND)


# add subdirectories
add_subdirectory(examples)


# set target for serial version
add_custom_target(serial
    COMMAND make
)

# set target for cleaning
add_custom_target(clean_data_files
    COMMAND ${CMAKE_MAKE_PROGRAM} -C examples clean_example
)

# set target for checking
add_custom_target(check
    DEPENDS serial
    COMMAND ${CMAKE_MAKE_PROGRAM} -C examples check_example
)

enable_testing()

add_subdirectory(test)