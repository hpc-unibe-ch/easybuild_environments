help([==[

Description
===========
Boost provides free peer-reviewed portable C++ source libraries.


More information
================
 - Homepage: http://www.boost.org/
]==])

whatis([==[Description: Boost provides free peer-reviewed portable C++ source libraries.]==])
whatis([==[Homepage: http://www.boost.org/]==])

local root = "/software.el7/software/Boost/1.66.0-foss-2018a"

conflict("Boost")

if not isloaded("foss/2018a") then
    load("foss/2018a")
end

if not isloaded("bzip2/.1.0.6-GCCcore-6.4.0") then
    load("bzip2/.1.0.6-GCCcore-6.4.0")
end

if not isloaded("zlib/.1.2.11-GCCcore-6.4.0") then
    load("zlib/.1.2.11-GCCcore-6.4.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTBOOST", root)
setenv("EBVERSIONBOOST", "1.66.0")
setenv("EBDEVELBOOST", pathJoin(root, "easybuild/Boost-1.66.0-foss-2018a-easybuild-devel"))

setenv("BOOST_ROOT", "/software.el7/software/Boost/1.66.0-foss-2018a")
-- Built with EasyBuild version 3.6.1
