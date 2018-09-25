help([==[

Description
===========
Intel MPI Library, compatible with MPICH ABI


More information
================
 - Homepage: http://software.intel.com/en-us/intel-mpi-library/
]==])

whatis([==[Description: Intel MPI Library, compatible with MPICH ABI]==])
whatis([==[Homepage: http://software.intel.com/en-us/intel-mpi-library/]==])

local root = "/software.el7/software/impi/2018.1.163-iccifort-2018.1.163-GCC-6.4.0-2.28"

conflict("impi")

if not isloaded("iccifort/2018.1.163-GCC-6.4.0-2.28") then
    load("iccifort/2018.1.163-GCC-6.4.0-2.28")
end

prepend_path("CPATH", pathJoin(root, "include64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin64"))
setenv("EBROOTIMPI", root)
setenv("EBVERSIONIMPI", "2018.1.163")
setenv("EBDEVELIMPI", pathJoin(root, "easybuild/impi-2018.1.163-iccifort-2018.1.163-GCC-6.4.0-2.28-easybuild-devel"))

prepend_path("NLSPATH", pathJoin(root, "idb/intel64/locale/%l_%t/%N"))
setenv("I_MPI_ROOT", "/software.el7/software/impi/2018.1.163-iccifort-2018.1.163-GCC-6.4.0-2.28")
setenv("I_MPI_HYDRA_BOOTSTRAP", "slurm")
-- Built with EasyBuild version 3.6.1
