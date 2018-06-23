help([==[

Description
===========
Library for reading and writing coordinate system information from/to GeoTIFF files


More information
================
 - Homepage: https://directory.fsf.org/wiki/Libgeotiff
]==])

whatis([==[Description: Library for reading and writing coordinate system information from/to GeoTIFF files]==])
whatis([==[Homepage: https://directory.fsf.org/wiki/Libgeotiff]==])

local root = "/software.el7/software/libgeotiff/1.4.2-foss-2018a"

conflict("libgeotiff")

if not isloaded("foss/2018a") then
    load("foss/2018a")
end

if not isloaded("zlib/.1.2.11-GCCcore-6.4.0") then
    load("zlib/.1.2.11-GCCcore-6.4.0")
end

if not isloaded("LibTIFF/.4.0.9-GCCcore-6.4.0") then
    load("LibTIFF/.4.0.9-GCCcore-6.4.0")
end

if not isloaded("PROJ/.5.0.0-foss-2018a") then
    load("PROJ/.5.0.0-foss-2018a")
end

if not isloaded("libjpeg-turbo/.1.5.3-GCCcore-6.4.0") then
    load("libjpeg-turbo/.1.5.3-GCCcore-6.4.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTLIBGEOTIFF", root)
setenv("EBVERSIONLIBGEOTIFF", "1.4.2")
setenv("EBDEVELLIBGEOTIFF", pathJoin(root, "easybuild/libgeotiff-.1.4.2-foss-2018a-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
