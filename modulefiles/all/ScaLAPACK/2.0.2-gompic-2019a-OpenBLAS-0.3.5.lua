help([==[

Description
===========
The ScaLAPACK (or Scalable LAPACK) library includes a subset of LAPACK routines
 redesigned for distributed memory MIMD parallel computers.


More information
================
 - Homepage: https://www.netlib.org/scalapack/
]==])

whatis([==[Description: The ScaLAPACK (or Scalable LAPACK) library includes a subset of LAPACK routines
 redesigned for distributed memory MIMD parallel computers.]==])
whatis([==[Homepage: https://www.netlib.org/scalapack/]==])

local root = "/software.el7/software/ScaLAPACK/2.0.2-gompic-2019a-OpenBLAS-0.3.5"

conflict("ScaLAPACK")

if not ( isloaded("gompic/2019a") ) then
    load("gompic/2019a")
end

if not ( isloaded("OpenBLAS/0.3.5-GCC-8.2.0-2.31.1") ) then
    load("OpenBLAS/0.3.5-GCC-8.2.0-2.31.1")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTSCALAPACK", root)
setenv("EBVERSIONSCALAPACK", "2.0.2")
setenv("EBDEVELSCALAPACK", pathJoin(root, "easybuild/ScaLAPACK-2.0.2-gompic-2019a-OpenBLAS-0.3.5-easybuild-devel"))

-- Built with EasyBuild version 3.9.1
