help([==[

Description
===========
The Open MPI Project is an open source MPI-3 implementation.


More information
================
 - Homepage: http://www.open-mpi.org/
]==])

whatis([==[Description: The Open MPI Project is an open source MPI-3 implementation.]==])
whatis([==[Homepage: http://www.open-mpi.org/]==])

local root = "/software.el7/software/OpenMPI/3.1.1-iccifort-2018.3.222-GCC-7.3.0-2.30"

conflict("OpenMPI")

if not isloaded("iccifort/2018.3.222-GCC-7.3.0-2.30") then
    load("iccifort/2018.3.222-GCC-7.3.0-2.30")
end

if not isloaded("zlib/.1.2.11-GCCcore-7.3.0") then
    load("zlib/.1.2.11-GCCcore-7.3.0")
end

if not isloaded("hwloc/1.11.10-GCCcore-7.3.0") then
    load("hwloc/1.11.10-GCCcore-7.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTOPENMPI", root)
setenv("EBVERSIONOPENMPI", "3.1.1")
setenv("EBDEVELOPENMPI", pathJoin(root, "easybuild/OpenMPI-3.1.1-iccifort-2018.3.222-GCC-7.3.0-2.30-easybuild-devel"))

-- Built with EasyBuild version 3.7.1
