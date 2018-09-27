help([==[

Description
===========
UDUNITS supports conversion of unit specifications between formatted and binary forms,
 arithmetic manipulation of units, and conversion of values between compatible scales of measurement.


More information
================
 - Homepage: http://www.unidata.ucar.edu/software/udunits/
]==])

whatis([==[Description: UDUNITS supports conversion of unit specifications between formatted and binary forms,
 arithmetic manipulation of units, and conversion of values between compatible scales of measurement.]==])
whatis([==[Homepage: http://www.unidata.ucar.edu/software/udunits/]==])

local root = "/software.el7/software/UDUNITS/2.2.26-foss-2018a"

conflict("UDUNITS")

if not isloaded("foss/2018a") then
    load("foss/2018a")
end

if not isloaded("expat/.2.2.5-GCCcore-6.4.0") then
    load("expat/.2.2.5-GCCcore-6.4.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTUDUNITS", root)
setenv("EBVERSIONUDUNITS", "2.2.26")
setenv("EBDEVELUDUNITS", pathJoin(root, "easybuild/UDUNITS-2.2.26-foss-2018a-easybuild-devel"))

-- Built with EasyBuild version 3.6.2
