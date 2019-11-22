help([==[

Description
===========
Efficient binary-decimal and decimal-binary conversion routines for IEEE doubles.


More information
================
 - Homepage: https://github.com/google/double-conversion
]==])

whatis([==[Description: Efficient binary-decimal and decimal-binary conversion routines for IEEE doubles.]==])
whatis([==[Homepage: https://github.com/google/double-conversion]==])
whatis([==[URL: https://github.com/google/double-conversion]==])

local root = "/software.el7/software/double-conversion/3.1.4-GCCcore-8.2.0"

conflict("double-conversion")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTDOUBLEMINCONVERSION", root)
setenv("EBVERSIONDOUBLEMINCONVERSION", "3.1.4")
setenv("EBDEVELDOUBLEMINCONVERSION", pathJoin(root, "easybuild/double-conversion-3.1.4-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.0.1
