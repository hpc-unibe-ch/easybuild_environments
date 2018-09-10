help([==[

Description
===========
Intel VTune Amplifier XE is the premier performance profiler for C, C++, C#, Fortran,
 Assembly and Java.


More information
================
 - Homepage: http://software.intel.com/en-us/intel-vtune-amplifier-xe
]==])

whatis([==[Description: Intel VTune Amplifier XE is the premier performance profiler for C, C++, C#, Fortran,
 Assembly and Java.]==])
whatis([==[Homepage: http://software.intel.com/en-us/intel-vtune-amplifier-xe]==])

local root = "/software.el7/software/VTune/2018_update3"

conflict("VTune")

prepend_path("PATH", pathJoin(root, "vtune_amplifier/bin64"))
setenv("EBROOTVTUNE", root)
setenv("EBVERSIONVTUNE", "2018_update3")
setenv("EBDEVELVTUNE", pathJoin(root, "easybuild/VTune-2018_update3-easybuild-devel"))

prepend_path("INTEL_LICENSE_FILE", "28518@lizenzserver-intel.ubelix.unibe.ch")
prepend_path("NLSPATH", pathJoin(root, "idb/intel64/locale/%l_%t/%N"))
-- Built with EasyBuild version 3.6.2
