# defines that must be present in config.h for our headers
set (opm-testing_CONFIG_VAR
  HAVE_OPM_GRID
  HAVE_PTHREAD
  HAVE_EWOMS
  HAVE_ERT
  HAVE_MPI
  HAVE_PETSC
  HAVE_SUITESPARSE_UMFPACK_H
  HAVE_DUNE_ISTL
  DUNE_ISTL_VERSION_MAJOR
  DUNE_ISTL_VERSION_MINOR
  DUNE_ISTL_VERSION_REVISION
  HAVE_SUITESPARSE_UMFPACK
  )

# dependencies
set (opm-flowexperimental_DEPS
  # Compile with C99 support if available
  "C99"
  # Various runtime library enhancements
  "Boost 1.44.0
    COMPONENTS date_time system unit_test_framework REQUIRED"
  # DUNE prerequisites
  "dune-common REQUIRED"
  "dune-istl REQUIRED"
  # matrix library
  "BLAS REQUIRED"
  "LAPACK REQUIRED"
  # Look for MPI support
  "MPI"
  # PETSc numerical backend
  "PETSc"
  # Tim Davis' SuiteSparse archive
  "SuiteSparse COMPONENTS umfpack"
  # SuperLU direct solver
  "SuperLU"
  # OPM dependency
  "opm-common REQUIRED"
  "opm-grid REQUIRED"
  "opm-models REQUIRED"
  "opm-simulators REQUIRED"
  "Damaris 1.7"
  "HDF5"  
  )

find_package_deps(opm-flowexperimental)
