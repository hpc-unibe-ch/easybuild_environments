help([==[

Description
===========
GDAL is a translator library for raster geospatial data formats that is released under an X/MIT style
 Open Source license by the Open Source Geospatial Foundation. As a library, it presents a single abstract data model
 to the calling application for all supported formats. It also comes with a variety of useful commandline utilities for
 data translation and processing.


More information
================
 - Homepage: http://www.gdal.org/
]==])

whatis([==[Description: GDAL is a translator library for raster geospatial data formats that is released under an X/MIT style
 Open Source license by the Open Source Geospatial Foundation. As a library, it presents a single abstract data model
 to the calling application for all supported formats. It also comes with a variety of useful commandline utilities for
 data translation and processing.]==])
whatis([==[Homepage: http://www.gdal.org/]==])

local root = "/software.el7/software/GDAL/2.2.3-foss-2018a-Python-3.6.4"

conflict("GDAL")

if not isloaded("foss/2018a") then
    load("foss/2018a")
end

if not isloaded("Python/3.6.4-foss-2018a") then
    load("Python/3.6.4-foss-2018a")
end

if not isloaded("netCDF/4.6.0-foss-2018a") then
    load("netCDF/4.6.0-foss-2018a")
end

if not isloaded("expat/.2.2.5-GCCcore-6.4.0") then
    load("expat/.2.2.5-GCCcore-6.4.0")
end

if not isloaded("GEOS/3.6.2-foss-2018a-Python-3.6.4") then
    load("GEOS/3.6.2-foss-2018a-Python-3.6.4")
end

if not isloaded("SQLite/3.21.0-GCCcore-6.4.0") then
    load("SQLite/3.21.0-GCCcore-6.4.0")
end

if not isloaded("libxml2/.2.9.7-GCCcore-6.4.0") then
    load("libxml2/.2.9.7-GCCcore-6.4.0")
end

if not isloaded("libpng/.1.6.34-GCCcore-6.4.0") then
    load("libpng/.1.6.34-GCCcore-6.4.0")
end

if not isloaded("libjpeg-turbo/.1.5.3-GCCcore-6.4.0") then
    load("libjpeg-turbo/.1.5.3-GCCcore-6.4.0")
end

if not isloaded("JasPer/.2.0.14-GCCcore-6.4.0") then
    load("JasPer/.2.0.14-GCCcore-6.4.0")
end

if not isloaded("LibTIFF/.4.0.9-GCCcore-6.4.0") then
    load("LibTIFF/.4.0.9-GCCcore-6.4.0")
end

if not isloaded("zlib/.1.2.11-GCCcore-6.4.0") then
    load("zlib/.1.2.11-GCCcore-6.4.0")
end

if not isloaded("cURL/7.58.0-GCCcore-6.4.0") then
    load("cURL/7.58.0-GCCcore-6.4.0")
end

if not isloaded("PCRE/.8.41-GCCcore-6.4.0") then
    load("PCRE/.8.41-GCCcore-6.4.0")
end

if not isloaded("PROJ/.5.0.0-foss-2018a") then
    load("PROJ/.5.0.0-foss-2018a")
end

if not isloaded("libgeotiff/.1.4.2-foss-2018a") then
    load("libgeotiff/.1.4.2-foss-2018a")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTGDAL", root)
setenv("EBVERSIONGDAL", "2.2.3")
setenv("EBDEVELGDAL", pathJoin(root, "easybuild/GDAL-.2.2.3-foss-2018a-Python-3.6.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.6/site-packages"))
-- Built with EasyBuild version 3.6.1
