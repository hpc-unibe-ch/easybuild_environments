help([==[

Description
===========
Intel C and C++ compilers


More information
================
 - Homepage: http://software.intel.com/en-us/intel-compilers/
]==])

whatis([==[Description: Intel C and C++ compilers]==])
whatis([==[Homepage: http://software.intel.com/en-us/intel-compilers/]==])

local root = "/software.el7/software/icc/2017.4.196-GCC-6.4.0-2.28"

conflict("icc")

if not isloaded("GCCcore/.6.4.0") then
    load("GCCcore/.6.4.0")
end

if not isloaded("binutils/.2.28-GCCcore-6.4.0") then
    load("binutils/.2.28-GCCcore-6.4.0")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "compilers_and_libraries_2017.4.196/linux/compiler/lib/intel64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "debugger_2017/libipt/intel64/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "compilers_and_libraries_2017.4.196/linux/compiler/lib/intel64"))
prepend_path("MANPATH", pathJoin(root, "compilers_and_libraries_2017.4.196/linux/man/common"))
prepend_path("PATH", pathJoin(root, "compilers_and_libraries_2017.4.196/linux/bin/intel64"))
setenv("EBROOTICC", root)
setenv("EBVERSIONICC", "2017.4.196")
setenv("EBDEVELICC", pathJoin(root, "easybuild/icc-.2017.4.196-GCC-6.4.0-2.28-easybuild-devel"))

prepend_path("INTEL_LICENSE_FILE", "28518@lizenzserver-intel.ubelix.unibe.ch")
prepend_path("NLSPATH", pathJoin(root, "idb/intel64/locale/%l_%t/%N"))
setenv("INTEL_PYTHONHOME", "/software.el7/software/icc/2017.4.196-GCC-6.4.0-2.28/debugger_2017/python/intel64")
-- Built with EasyBuild version 3.6.1
