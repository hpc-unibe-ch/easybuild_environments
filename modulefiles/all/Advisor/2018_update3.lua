help([==[

Description
===========
Vectorization Optimization and Thread Prototyping
 - Vectorize & thread code or performance “dies”
 - Easy workflow + data + tips = faster code faster
 - Prioritize, Prototype & Predict performance gain


More information
================
 - Homepage: https://software.intel.com/intel-advisor-xe
]==])

whatis([==[Description: Vectorization Optimization and Thread Prototyping
 - Vectorize & thread code or performance “dies”
 - Easy workflow + data + tips = faster code faster
 - Prioritize, Prototype & Predict performance gain
 ]==])
whatis([==[Homepage: https://software.intel.com/intel-advisor-xe]==])

local root = "/software.el7/software/Advisor/2018_update3"

conflict("Advisor")

prepend_path("MANPATH", pathJoin(root, "advisor/man"))
prepend_path("PATH", pathJoin(root, "advisor/bin64"))
setenv("EBROOTADVISOR", root)
setenv("EBVERSIONADVISOR", "2018_update3")
setenv("EBDEVELADVISOR", pathJoin(root, "easybuild/Advisor-2018_update3-easybuild-devel"))

prepend_path("INTEL_LICENSE_FILE", "28518@lizenzserver-intel.ubelix.unibe.ch")
prepend_path("NLSPATH", pathJoin(root, "idb/intel64/locale/%l_%t/%N"))
-- Built with EasyBuild version 3.6.2
