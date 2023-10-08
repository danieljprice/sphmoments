# sphmoments
Command-line tool to compute smooth 2D moment maps from astronomical 3D data cubes using SPH kernel interpolation

![build](https://github.com/danieljprice/sphmoments/workflows/build/badge.svg)

## Install
```
brew tap danieljprice/all
brew install sphmoments
```

## Usage
```
sphmoments image.fits [out.fits]
```

## Advanced usage
Type sphmoments with no arguments to see the command line options:
```
sphmoments: a SPLASH imaging utility (c) 2023 Daniel Price

Usage: sphmoments [options] infile.fits [outfile.fits]

Options:  --moments=0,1,9   [which moments to take, default=0,1,2,8,9]
          --kernel=0        [which smoothing kernel to use: 0=cubic spline 2=quartic 3=quintic]
          --hfac=5.         [ratio of smoothing length to channel spacing in spectral dimension]
          --sample=10       [factor by which to oversample line profiles, not very important]

```

## Installing from source
To compile sphmoments from source you will need a Fortran compiler (gfortran)
and the cfitsio library. Then compile sphmoments as follows:
```
git clone --recurse-submodules https://github.com/danieljprice/sphmoments
export SYSTEM=gfortran
make
make install
```

If you need to specify the path to the cfitsio library, either set LD_LIBRARY_FLAGS, or the FITS_DIR environment variable to the location where the file libcfitsio.so can be found, e.g.
```
make FITS_DIR=$HOME/lib
```

## Examples

## About this repo
sphmoments is officially part of splash (https://github.com/danieljprice/splash). This repository is a standalone version of sphmoments that is updated with each stable release of splash that affects the relevant source files. Pull requests to this repo will also be incorporated back into the main splash source code.

## Updating the enclosed copy of splash source files to the latest
To update the included `submodule' of the splash source code in the sphmoments repository, use:
```
git submodule update --remote
```
