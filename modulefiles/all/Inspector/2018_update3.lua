help([==[

Description
===========
Intel Inspector XE is an easy to use memory error checker and thread checker for serial
 and parallel applications


More information
================
 - Homepage: http://software.intel.com/en-us/intel-inspector-xe
]==])

whatis([==[Description: Intel Inspector XE is an easy to use memory error checker and thread checker for serial
 and parallel applications]==])
whatis([==[Homepage: http://software.intel.com/en-us/intel-inspector-xe]==])

local root = "/software.el7/software/Inspector/2018_update3"

conflict("Inspector")

prepend_path("MANPATH", pathJoin(root, "inspector/man"))
prepend_path("PATH", pathJoin(root, "inspector/bin64"))
setenv("EBROOTINSPECTOR", root)
setenv("EBVERSIONINSPECTOR", "2018_update3")
setenv("EBDEVELINSPECTOR", pathJoin(root, "easybuild/Inspector-2018_update3-easybuild-devel"))

prepend_path("INTEL_LICENSE_FILE", "28518@lizenzserver-intel.ubelix.unibe.ch")
prepend_path("NLSPATH", pathJoin(root, "idb/intel64/locale/%l_%t/%N"))
-- Built with EasyBuild version 3.6.2
