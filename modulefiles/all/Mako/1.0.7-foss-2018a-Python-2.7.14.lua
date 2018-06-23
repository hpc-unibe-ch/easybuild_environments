help([==[

Description
===========
A super-fast templating language that borrows the best ideas from the existing templating languages


More information
================
 - Homepage: http://www.makotemplates.org
]==])

whatis([==[Description: A super-fast templating language that borrows the best ideas from the existing templating languages]==])
whatis([==[Homepage: http://www.makotemplates.org]==])

local root = "/software.el7/software/Mako/1.0.7-foss-2018a-Python-2.7.14"

conflict("Mako")

if not isloaded("foss/2018a") then
    load("foss/2018a")
end

if not isloaded("Python/2.7.14-foss-2018a") then
    load("Python/2.7.14-foss-2018a")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMAKO", root)
setenv("EBVERSIONMAKO", "1.0.7")
setenv("EBDEVELMAKO", pathJoin(root, "easybuild/Mako-1.0.7-foss-2018a-Python-2.7.14-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.6.1
