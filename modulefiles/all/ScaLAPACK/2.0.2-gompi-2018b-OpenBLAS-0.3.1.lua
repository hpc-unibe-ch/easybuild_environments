help([==[

Description
===========
The ScaLAPACK (or Scalable LAPACK) library includes a subset of LAPACK routines
 redesigned for distributed memory MIMD parallel computers.


More information
================
 - Homepage: http://www.netlib.org/scalapack/
]==])

whatis([==[Description: The ScaLAPACK (or Scalable LAPACK) library includes a subset of LAPACK routines
 redesigned for distributed memory MIMD parallel computers.]==])
whatis([==[Homepage: http://www.netlib.org/scalapack/]==])

local root = "/software.el7/software/ScaLAPACK/2.0.2-gompi-2018b-OpenBLAS-0.3.1"

conflict("ScaLAPACK")

if not isloaded("gompi/2018b") then
    load("gompi/2018b")
end

if not isloaded("OpenBLAS/0.3.1-GCC-7.3.0-2.30") then
    load("OpenBLAS/0.3.1-GCC-7.3.0-2.30")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTSCALAPACK", root)
setenv("EBVERSIONSCALAPACK", "2.0.2")
setenv("EBDEVELSCALAPACK", pathJoin(root, "easybuild/ScaLAPACK-2.0.2-gompi-2018b-OpenBLAS-0.3.1-easybuild-devel"))

-- Built with EasyBuild version 3.6.2
