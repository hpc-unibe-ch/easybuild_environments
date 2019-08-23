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
whatis([==[URL: http://ab-initio.mit.edu/wiki/index.php/NLopt]==])

local root = "/software.el7/software/NLopt/2.6.1-GCCcore-8.2.0"

conflict("NLopt")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib64/pkgconfig"))
setenv("EBROOTNLOPT", root)
setenv("EBVERSIONNLOPT", "2.6.1")
setenv("EBDEVELNLOPT", pathJoin(root, "easybuild/NLopt-2.6.1-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
