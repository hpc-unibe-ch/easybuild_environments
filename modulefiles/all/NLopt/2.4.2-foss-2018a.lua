help([==[

Description
===========
NLopt is a free/open-source library for nonlinear optimization, 
 providing a common interface for a number of different free optimization routines 
 available online as well as original implementations of various other algorithms.


More information
================
 - Homepage: http://ab-initio.mit.edu/wiki/index.php/NLopt
]==])

whatis([==[Description:  NLopt is a free/open-source library for nonlinear optimization, 
 providing a common interface for a number of different free optimization routines 
 available online as well as original implementations of various other algorithms. ]==])
whatis([==[Homepage: http://ab-initio.mit.edu/wiki/index.php/NLopt]==])

local root = "/software.el7/software/NLopt/2.4.2-foss-2018a"

conflict("NLopt")

if not isloaded("foss/2018a") then
    load("foss/2018a")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTNLOPT", root)
setenv("EBVERSIONNLOPT", "2.4.2")
setenv("EBDEVELNLOPT", pathJoin(root, "easybuild/NLopt-2.4.2-foss-2018a-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
