help([==[

Description
===========
The Open MPI Project is an open source MPI-2 implementation.


More information
================
 - Homepage: http://www.open-mpi.org/
]==])

whatis([==[Description: The Open MPI Project is an open source MPI-2 implementation.]==])
whatis([==[Homepage: http://www.open-mpi.org/]==])

local root = "/software.el7/software/OpenMPI/2.1.2-iccifort-2018.1.163-GCC-6.4.0-2.28"

conflict("OpenMPI")

if not isloaded("iccifort/2018.1.163-GCC-6.4.0-2.28") then
    load("iccifort/2018.1.163-GCC-6.4.0-2.28")
end

if not isloaded("hwloc/1.11.8-GCCcore-6.4.0") then
    load("hwloc/1.11.8-GCCcore-6.4.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTOPENMPI", root)
setenv("EBVERSIONOPENMPI", "2.1.2")
setenv("EBDEVELOPENMPI", pathJoin(root, "easybuild/OpenMPI-2.1.2-iccifort-2018.1.163-GCC-6.4.0-2.28-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
