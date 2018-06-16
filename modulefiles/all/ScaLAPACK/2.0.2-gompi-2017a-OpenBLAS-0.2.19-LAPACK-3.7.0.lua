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

local root = "/software.el7/software/ScaLAPACK/2.0.2-gompi-2017a-OpenBLAS-0.2.19-LAPACK-3.7.0"

conflict("ScaLAPACK")

if not isloaded("gompi/2017a") then
    load("gompi/2017a")
end

if not isloaded("OpenBLAS/0.2.19-GCC-6.3.0-2.27-LAPACK-3.7.0") then
    load("OpenBLAS/0.2.19-GCC-6.3.0-2.27-LAPACK-3.7.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTSCALAPACK", root)
setenv("EBVERSIONSCALAPACK", "2.0.2")
setenv("EBDEVELSCALAPACK", pathJoin(root, "easybuild/ScaLAPACK-2.0.2-gompi-2017a-OpenBLAS-0.2.19-LAPACK-3.7.0-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
