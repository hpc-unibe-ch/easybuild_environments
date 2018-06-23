help([==[

Description
===========
Program proj is a standard Unix filter function which converts 
geographic longitude and latitude coordinates into cartesian coordinates


More information
================
 - Homepage: http://trac.osgeo.org/proj/
]==])

whatis([==[Description: Program proj is a standard Unix filter function which converts 
geographic longitude and latitude coordinates into cartesian coordinates]==])
whatis([==[Homepage: http://trac.osgeo.org/proj/]==])

local root = "/software.el7/software/PROJ/5.0.0-foss-2018a"

conflict("PROJ")

if not isloaded("foss/2018a") then
    load("foss/2018a")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTPROJ", root)
setenv("EBVERSIONPROJ", "5.0.0")
setenv("EBDEVELPROJ", pathJoin(root, "easybuild/PROJ-.5.0.0-foss-2018a-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
