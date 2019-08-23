help([==[

Description
===========
A super-fast templating language that borrows the best ideas from the existing templating languages


More information
================
 - Homepage: http://www.makotemplates.org


Compatible modules
==================
This module is compatible with the following modules, one of each line is required:
* Python/3.7.2-GCCcore-8.2.0 (default), Python/2.7.15-GCCcore-8.2.0
]==])

whatis([==[Description: A super-fast templating language that borrows the best ideas from the existing templating languages]==])
whatis([==[Homepage: http://www.makotemplates.org]==])
whatis([==[URL: http://www.makotemplates.org]==])
whatis([==[Compatible modules: Python/3.7.2-GCCcore-8.2.0 (default), Python/2.7.15-GCCcore-8.2.0]==])

local root = "/software.el7/software/Mako/1.0.8-GCCcore-8.2.0"

conflict("Mako")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("Python/3.7.2-GCCcore-8.2.0") ) and not ( isloaded("Python/2.7.15-GCCcore-8.2.0") ) then
    load("Python/3.7.2-GCCcore-8.2.0")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMAKO", root)
setenv("EBVERSIONMAKO", "1.0.8")
setenv("EBDEVELMAKO", pathJoin(root, "easybuild/Mako-1.0.8-GCCcore-8.2.0-easybuild-devel"))

prepend_path("EBPYTHONPREFIXES", root)
-- Built with EasyBuild version 3.9.3
