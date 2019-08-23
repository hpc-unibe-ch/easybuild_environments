help([==[

Description
===========
The GNU Scientific Library (GSL) is a numerical library for C and C++ programmers.
 The library provides a wide range of mathematical routines such as random number generators, special functions
 and least-squares fitting.


More information
================
 - Homepage: http://www.gnu.org/software/gsl/
]==])

whatis([==[Description: The GNU Scientific Library (GSL) is a numerical library for C and C++ programmers.
 The library provides a wide range of mathematical routines such as random number generators, special functions
 and least-squares fitting.]==])
whatis([==[Homepage: http://www.gnu.org/software/gsl/]==])
whatis([==[URL: http://www.gnu.org/software/gsl/]==])

local root = "/software.el7/software/GSL/2.5-GCC-8.2.0-2.31.1"

conflict("GSL")

if not ( isloaded("GCC/8.2.0-2.31.1") ) then
    load("GCC/8.2.0-2.31.1")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTGSL", root)
setenv("EBVERSIONGSL", "2.5")
setenv("EBDEVELGSL", pathJoin(root, "easybuild/GSL-2.5-GCC-8.2.0-2.31.1-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
