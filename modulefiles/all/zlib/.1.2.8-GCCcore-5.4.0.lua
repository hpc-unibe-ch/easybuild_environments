help([==[

Description
===========
zlib is designed to be a free, general-purpose, legally unencumbered -- that is,
 not covered by any patents -- lossless data-compression library for use on virtually any
 computer hardware and operating system.


More information
================
 - Homepage: http://www.zlib.net/
]==])

whatis([==[Description: zlib is designed to be a free, general-purpose, legally unencumbered -- that is,
 not covered by any patents -- lossless data-compression library for use on virtually any
 computer hardware and operating system.]==])
whatis([==[Homepage: http://www.zlib.net/]==])

local root = "/software.el7/software/zlib/1.2.8-GCCcore-5.4.0"

conflict("zlib")

if not isloaded("GCCcore/5.4.0") then
    load("GCCcore/5.4.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTZLIB", root)
setenv("EBVERSIONZLIB", "1.2.8")
setenv("EBDEVELZLIB", pathJoin(root, "easybuild/zlib-.1.2.8-GCCcore-5.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
