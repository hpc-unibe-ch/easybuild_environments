help([==[

Description
===========
GNU M4 is an implementation of the traditional Unix macro processor. It is
 mostly SVR4 compatible although it has some extensions (for example, handling
 more than 9 positional parameters to macros). GNU M4 also has built-in
 functions for including files, running shell commands, doing arithmetic, etc.


More information
================
 - Homepage: http://www.gnu.org/software/m4/m4.html
]==])

whatis([==[Description: 
 GNU M4 is an implementation of the traditional Unix macro processor. It is
 mostly SVR4 compatible although it has some extensions (for example, handling
 more than 9 positional parameters to macros). GNU M4 also has built-in
 functions for including files, running shell commands, doing arithmetic, etc.
]==])
whatis([==[Homepage: http://www.gnu.org/software/m4/m4.html]==])

local root = "/software.el7/software/M4/1.4.18"

conflict("M4")

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTM4", root)
setenv("EBVERSIONM4", "1.4.18")
setenv("EBDEVELM4", pathJoin(root, "easybuild/M4-.1.4.18-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
