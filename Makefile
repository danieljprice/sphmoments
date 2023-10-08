#----------------------------------------------------------------
#   Makefile for sphmoments utility in SPLASH 
#   This file is just a wrapper for the sub-make in the build
#   directory. Refer to splash/build/Makefile for more details.
#
#   (c) 2023 Daniel Price
#
#----------------------------------------------------------------

.PHONY: sphmoments splash install docs tests src bin
sphmoments:
	@cd splash/build; ${MAKE} sphmoments DOUBLEPRECISION=no 
	@ln -sf ./splash/bin/sphmoments

splash:
	@cd splash/build; ${MAKE} ${MAKECMDGOALS}

%::
	@cd splash/build; ${MAKE} ${MAKECMDGOALS}

install:
	@cd splash/build; ${MAKE} ${MAKECMDGOALS}

docs:
	@cd docs; ${MAKE}

clean:
	@cd splash/build; ${MAKE} clean
