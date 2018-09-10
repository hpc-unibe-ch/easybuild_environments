help([==[

Description
===========
The Intel Trace Collector is a low-overhead tracing library that performs
 event-based tracing in applications. The Intel Trace Analyzer provides a convenient way to monitor application
 activities gathered by the Intel Trace Collector through graphical displays.


More information
================
 - Homepage: http://software.intel.com/en-us/intel-trace-analyzer/
]==])

whatis([==[Description: The Intel Trace Collector is a low-overhead tracing library that performs
 event-based tracing in applications. The Intel Trace Analyzer provides a convenient way to monitor application
 activities gathered by the Intel Trace Collector through graphical displays. ]==])
whatis([==[Homepage: http://software.intel.com/en-us/intel-trace-analyzer/]==])

local root = "/software.el7/software/itac/2018.3.022"

conflict("itac")

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "slib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTITAC", root)
setenv("EBVERSIONITAC", "2018.3.022")
setenv("EBDEVELITAC", pathJoin(root, "easybuild/itac-2018.3.022-easybuild-devel"))

prepend_path("INTEL_LICENSE_FILE", "28518@lizenzserver-intel.ubelix.unibe.ch")
prepend_path("NLSPATH", pathJoin(root, "idb/intel64/locale/%l_%t/%N"))
setenv("VT_ROOT", "/software.el7/software/itac/2018.3.022")
setenv("VT_MPI", "impi5")
setenv("VT_ADD_LIBS", "-ldwarf -lelf -lvtunwind -lnsl -lm -ldl -lpthread")
setenv("VT_LIB_DIR", "/software.el7/software/itac/2018.3.022/lib")
setenv("VT_SLIB_DIR", "/software.el7/software/itac/2018.3.022/slib")
-- Built with EasyBuild version 3.6.2
