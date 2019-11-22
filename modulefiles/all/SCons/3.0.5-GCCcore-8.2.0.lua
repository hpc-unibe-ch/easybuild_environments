help([==[

Description
===========
SCons is a software construction tool.


More information
================
 - Homepage: http://www.scons.org/


Compatible modules
==================
This module is compatible with the following modules, one of each line is required:
* Python/3.7.2-GCCcore-8.2.0 (default), Python/2.7.15-GCCcore-8.2.0
]==])

whatis([==[Description: SCons is a software construction tool.]==])
whatis([==[Homepage: http://www.scons.org/]==])
whatis([==[URL: http://www.scons.org/]==])
whatis([==[Compatible modules: Python/3.7.2-GCCcore-8.2.0 (default), Python/2.7.15-GCCcore-8.2.0]==])

local root = "/software.el7/software/SCons/3.0.5-GCCcore-8.2.0"

conflict("SCons")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("Python/3.7.2-GCCcore-8.2.0") ) and not ( isloaded("Python/2.7.15-GCCcore-8.2.0") ) then
    load("Python/3.7.2-GCCcore-8.2.0")
end

prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCONS", root)
setenv("EBVERSIONSCONS", "3.0.5")
setenv("EBDEVELSCONS", pathJoin(root, "easybuild/SCons-3.0.5-GCCcore-8.2.0-easybuild-devel"))

prepend_path("EBPYTHONPREFIXES", root)
-- Built with EasyBuild version 4.0.1
