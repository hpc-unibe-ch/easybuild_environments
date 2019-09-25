help([==[

Description
===========
SCons is a software construction tool.


More information
================
 - Homepage: http://www.scons.org/
]==])

whatis([==[Description: SCons is a software construction tool.]==])
whatis([==[Homepage: http://www.scons.org/]==])
whatis([==[URL: http://www.scons.org/]==])

local root = "/software.el7/software/SCons/2.5.0-foss-2016b-Python-2.7.12"

conflict("SCons")

if not ( isloaded("foss/2016b") ) then
    load("foss/2016b")
end

if not ( isloaded("Python/2.7.12-foss-2016b") ) then
    load("Python/2.7.12-foss-2016b")
end

prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCONS", root)
setenv("EBVERSIONSCONS", "2.5.0")
setenv("EBDEVELSCONS", pathJoin(root, "easybuild/SCons-2.5.0-foss-2016b-Python-2.7.12-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
