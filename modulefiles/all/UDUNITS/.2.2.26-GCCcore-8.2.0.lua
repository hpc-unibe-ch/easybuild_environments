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
whatis([==[URL: http://www.unidata.ucar.edu/software/udunits/]==])

local root = "/software.el7/software/UDUNITS/2.2.26-GCCcore-8.2.0"

conflict("UDUNITS")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("expat/.2.2.6-GCCcore-8.2.0") ) then
    load("expat/.2.2.6-GCCcore-8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTUDUNITS", root)
setenv("EBVERSIONUDUNITS", "2.2.26")
setenv("EBDEVELUDUNITS", pathJoin(root, "easybuild/UDUNITS-.2.2.26-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
