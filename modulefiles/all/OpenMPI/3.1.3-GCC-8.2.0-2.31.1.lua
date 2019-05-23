help([==[

Description
===========
The Open MPI Project is an open source MPI-3 implementation.


More information
================
 - Homepage: https://www.open-mpi.org/
]==])

whatis([==[Description: The Open MPI Project is an open source MPI-3 implementation.]==])
whatis([==[Homepage: https://www.open-mpi.org/]==])

local root = "/software.el7/software/OpenMPI/3.1.3-GCC-8.2.0-2.31.1"

conflict("OpenMPI")

if not ( isloaded("GCC/8.2.0-2.31.1") ) then
    load("GCC/8.2.0-2.31.1")
end

if not ( isloaded("zlib/.1.2.11-GCCcore-8.2.0") ) then
    load("zlib/.1.2.11-GCCcore-8.2.0")
end

if not ( isloaded("hwloc/1.11.11-GCCcore-8.2.0") ) then
    load("hwloc/1.11.11-GCCcore-8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTOPENMPI", root)
setenv("EBVERSIONOPENMPI", "3.1.3")
setenv("EBDEVELOPENMPI", pathJoin(root, "easybuild/OpenMPI-3.1.3-GCC-8.2.0-2.31.1-easybuild-devel"))

-- Built with EasyBuild version 3.9.1
