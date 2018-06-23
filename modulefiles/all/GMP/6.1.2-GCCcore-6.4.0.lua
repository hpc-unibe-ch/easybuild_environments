help([==[

Description
===========
GMP is a free library for arbitrary precision arithmetic, operating on signed
 integers, rational numbers, and floating point numbers.


More information
================
 - Homepage: http://gmplib.org/
]==])

whatis([==[Description: 
 GMP is a free library for arbitrary precision arithmetic, operating on signed
 integers, rational numbers, and floating point numbers.
]==])
whatis([==[Homepage: http://gmplib.org/]==])

local root = "/software.el7/software/GMP/6.1.2-GCCcore-6.4.0"

conflict("GMP")

if not isloaded("GCCcore/6.4.0") then
    load("GCCcore/6.4.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTGMP", root)
setenv("EBVERSIONGMP", "6.1.2")
setenv("EBDEVELGMP", pathJoin(root, "easybuild/GMP-6.1.2-GCCcore-6.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
