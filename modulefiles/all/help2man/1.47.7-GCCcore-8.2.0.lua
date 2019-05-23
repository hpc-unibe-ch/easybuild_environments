help([==[

Description
===========
help2man produces simple manual pages from the '--help' and '--version' output of other commands.


More information
================
 - Homepage: https://www.gnu.org/software/help2man/
]==])

whatis([==[Description: help2man produces simple manual pages from the '--help' and '--version' output of other commands.]==])
whatis([==[Homepage: https://www.gnu.org/software/help2man/]==])

local root = "/software.el7/software/help2man/1.47.7-GCCcore-8.2.0"

conflict("help2man")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTHELP2MAN", root)
setenv("EBVERSIONHELP2MAN", "1.47.7")
setenv("EBDEVELHELP2MAN", pathJoin(root, "easybuild/help2man-1.47.7-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.1
