help([==[

Description
===========
libjpeg-turbo is a fork of the original IJG libjpeg which uses SIMD to
 accelerate baseline JPEG compression and decompression. libjpeg is a library
 that implements JPEG image encoding, decoding and transcoding.


More information
================
 - Homepage: http://sourceforge.net/projects/libjpeg-turbo/
]==])

whatis([==[Description: 
 libjpeg-turbo is a fork of the original IJG libjpeg which uses SIMD to
 accelerate baseline JPEG compression and decompression. libjpeg is a library
 that implements JPEG image encoding, decoding and transcoding.
]==])
whatis([==[Homepage: http://sourceforge.net/projects/libjpeg-turbo/]==])
whatis([==[URL: http://sourceforge.net/projects/libjpeg-turbo/]==])

local root = "/software.el7/software/libjpeg-turbo/2.0.2-GCCcore-8.2.0"

conflict("libjpeg-turbo")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("NASM/.2.14.02-GCCcore-8.2.0") ) then
    load("NASM/.2.14.02-GCCcore-8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib64/pkgconfig"))
setenv("EBROOTLIBJPEGMINTURBO", root)
setenv("EBVERSIONLIBJPEGMINTURBO", "2.0.2")
setenv("EBDEVELLIBJPEGMINTURBO", pathJoin(root, "easybuild/libjpeg-turbo-.2.0.2-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
