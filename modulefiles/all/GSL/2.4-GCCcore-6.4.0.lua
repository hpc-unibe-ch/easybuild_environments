help([==[

Description
===========
The GNU Scientific Library (GSL) is a numerical library for C and C++
 programmers.  The library provides a wide range of mathematical routines
 such as random number generators, special functions and least-squares fitting.


More information
================
 - Homepage: http://www.gnu.org/software/gsl/
]==])

whatis([==[Description: 
 The GNU Scientific Library (GSL) is a numerical library for C and C++
 programmers.  The library provides a wide range of mathematical routines
 such as random number generators, special functions and least-squares fitting.
]==])
whatis([==[Homepage: http://www.gnu.org/software/gsl/]==])

local root = "/software.el7/software/GSL/2.4-GCCcore-6.4.0"

conflict("GSL")

if not isloaded("GCCcore/6.4.0") then
    load("GCCcore/6.4.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTGSL", root)
setenv("EBVERSIONGSL", "2.4")
setenv("EBDEVELGSL", pathJoin(root, "easybuild/GSL-2.4-GCCcore-6.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
