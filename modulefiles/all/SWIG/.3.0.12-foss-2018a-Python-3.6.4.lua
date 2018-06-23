help([==[

Description
===========
SWIG is a software development tool that connects programs written in C and C++ with
 a variety of high-level programming languages.


More information
================
 - Homepage: http://www.swig.org/
]==])

whatis([==[Description: SWIG is a software development tool that connects programs written in C and C++ with
 a variety of high-level programming languages.]==])
whatis([==[Homepage: http://www.swig.org/]==])

local root = "/software.el7/software/SWIG/3.0.12-foss-2018a-Python-3.6.4"

conflict("SWIG")

if not isloaded("foss/2018a") then
    load("foss/2018a")
end

if not isloaded("Python/3.6.4-foss-2018a") then
    load("Python/3.6.4-foss-2018a")
end

if not isloaded("PCRE/.8.41-GCCcore-6.4.0") then
    load("PCRE/.8.41-GCCcore-6.4.0")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSWIG", root)
setenv("EBVERSIONSWIG", "3.0.12")
setenv("EBDEVELSWIG", pathJoin(root, "easybuild/SWIG-.3.0.12-foss-2018a-Python-3.6.4-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
