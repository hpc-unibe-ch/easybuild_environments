help([==[

Description
===========
The Qwt library contains GUI Components and utility classes which are primarily useful for programs
 with a technical background.


More information
================
 - Homepage: http://qwt.sourceforge.net/
]==])

whatis([==[Description: The Qwt library contains GUI Components and utility classes which are primarily useful for programs
 with a technical background.]==])
whatis([==[Homepage: http://qwt.sourceforge.net/]==])
whatis([==[URL: http://qwt.sourceforge.net/]==])

local root = "/software.el7/software/Qwt/6.1.4-GCCcore-8.2.0"

conflict("Qwt")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("Qt5/5.12.3-GCCcore-8.2.0") ) then
    load("Qt5/5.12.3-GCCcore-8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTQWT", root)
setenv("EBVERSIONQWT", "6.1.4")
setenv("EBDEVELQWT", pathJoin(root, "easybuild/Qwt-6.1.4-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.0.1
