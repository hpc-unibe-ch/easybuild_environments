help([==[

Description
===========
Intel Fortran compiler


More information
================
 - Homepage: http://software.intel.com/en-us/intel-compilers/
]==])

whatis([==[Description: Intel Fortran compiler]==])
whatis([==[Homepage: http://software.intel.com/en-us/intel-compilers/]==])

local root = "/software.el7/software/ifort/2018.3.222-GCC-7.3.0-2.30"

conflict("ifort")

if not isloaded("GCCcore/.7.3.0") then
    load("GCCcore/.7.3.0")
end

if not isloaded("binutils/.2.30-GCCcore-7.3.0") then
    load("binutils/.2.30-GCCcore-7.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "compilers_and_libraries_2018.3.222/linux/compiler/lib/intel64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "debugger_2018/libipt/intel64/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "compilers_and_libraries_2018.3.222/linux/compiler/lib/intel64"))
prepend_path("MANPATH", pathJoin(root, "compilers_and_libraries_2018.3.222/linux/man/common"))
prepend_path("PATH", pathJoin(root, "compilers_and_libraries_2018.3.222/linux/bin/intel64"))
setenv("EBROOTIFORT", root)
setenv("EBVERSIONIFORT", "2018.3.222")
setenv("EBDEVELIFORT", pathJoin(root, "easybuild/ifort-.2018.3.222-GCC-7.3.0-2.30-easybuild-devel"))

prepend_path("INTEL_LICENSE_FILE", "28518@lizenzserver-intel.ubelix.unibe.ch")
prepend_path("NLSPATH", pathJoin(root, "idb/intel64/locale/%l_%t/%N"))
setenv("INTEL_PYTHONHOME", "/software.el7/software/ifort/2018.3.222-GCC-7.3.0-2.30/debugger_2018/python/intel64")
-- Built with EasyBuild version 3.6.2
