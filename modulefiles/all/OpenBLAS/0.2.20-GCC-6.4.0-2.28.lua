help([==[

Description
===========
OpenBLAS is an optimized BLAS library based on GotoBLAS2 1.13 BSD version.


More information
================
 - Homepage: http://xianyi.github.com/OpenBLAS/
]==])

whatis([==[Description: OpenBLAS is an optimized BLAS library based on GotoBLAS2 1.13 BSD version.]==])
whatis([==[Homepage: http://xianyi.github.com/OpenBLAS/]==])

local root = "/software.el7/software/OpenBLAS/0.2.20-GCC-6.4.0-2.28"

conflict("OpenBLAS")

if not isloaded("GCC/6.4.0-2.28") then
    load("GCC/6.4.0-2.28")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTOPENBLAS", root)
setenv("EBVERSIONOPENBLAS", "0.2.20")
setenv("EBDEVELOPENBLAS", pathJoin(root, "easybuild/OpenBLAS-0.2.20-GCC-6.4.0-2.28-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
