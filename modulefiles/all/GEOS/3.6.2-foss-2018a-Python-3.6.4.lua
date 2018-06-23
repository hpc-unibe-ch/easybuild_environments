help([==[

Description
===========
GEOS (Geometry Engine - Open Source) is a C++ port of the  Java Topology Suite (JTS)


More information
================
 - Homepage: http://trac.osgeo.org/geos
]==])

whatis([==[Description: GEOS (Geometry Engine - Open Source) is a C++ port of the  Java Topology Suite (JTS)]==])
whatis([==[Homepage: http://trac.osgeo.org/geos]==])

local root = "/software.el7/software/GEOS/3.6.2-foss-2018a-Python-3.6.4"

conflict("GEOS")

if not isloaded("foss/2018a") then
    load("foss/2018a")
end

if not isloaded("Python/3.6.4-foss-2018a") then
    load("Python/3.6.4-foss-2018a")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGEOS", root)
setenv("EBVERSIONGEOS", "3.6.2")
setenv("EBDEVELGEOS", pathJoin(root, "easybuild/GEOS-3.6.2-foss-2018a-Python-3.6.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.6/site-packages"))
-- Built with EasyBuild version 3.6.1
