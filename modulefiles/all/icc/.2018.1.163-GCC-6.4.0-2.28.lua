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

local root = "/software.el7/software/icc/2018.1.163-GCC-6.4.0-2.28"

conflict("icc")

if not isloaded("GCCcore/.6.4.0") then
    load("GCCcore/.6.4.0")
end

if not isloaded("binutils/.2.28-GCCcore-6.4.0") then
    load("binutils/.2.28-GCCcore-6.4.0")
end

prepend_path("CPATH", pathJoin(root, "compilers_and_libraries_2018.1.163/linux/tbb/include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "compilers_and_libraries_2018.1.163/linux/compiler/lib/intel64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "compilers_and_libraries_2018.1.163/linux/tbb/lib/intel64/gcc4.4"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "debugger_2018/libipt/intel64/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "compilers_and_libraries_2018.1.163/linux/compiler/lib/intel64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "compilers_and_libraries_2018.1.163/linux/tbb/lib/intel64/gcc4.4"))
prepend_path("MANPATH", pathJoin(root, "compilers_and_libraries_2018.1.163/linux/man/common"))
prepend_path("PATH", pathJoin(root, "compilers_and_libraries_2018.1.163/linux/bin/intel64"))
prepend_path("TBBROOT", pathJoin(root, "compilers_and_libraries_2018.1.163/linux/tbb"))
setenv("EBROOTICC", root)
setenv("EBVERSIONICC", "2018.1.163")
setenv("EBDEVELICC", pathJoin(root, "easybuild/icc-.2018.1.163-GCC-6.4.0-2.28-easybuild-devel"))

prepend_path("INTEL_LICENSE_FILE", "28518@lizenzserver-intel.ubelix.unibe.ch")
prepend_path("NLSPATH", pathJoin(root, "idb/intel64/locale/%l_%t/%N"))
setenv("INTEL_PYTHONHOME", "/software.el7/software/icc/2018.1.163-GCC-6.4.0-2.28/debugger_2018/python/intel64")
-- Built with EasyBuild version 3.6.1
