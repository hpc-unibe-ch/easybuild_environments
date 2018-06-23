help([==[

Description
===========
Nettle is a cryptographic library that is designed to fit easily
 in more or less any context: In crypto toolkits for object-oriented
 languages (C++, Python, Pike, ...), in applications like LSH or GNUPG,
 or even in kernel space.


More information
================
 - Homepage: http://www.lysator.liu.se/~nisse/nettle/
]==])

whatis([==[Description: Nettle is a cryptographic library that is designed to fit easily
 in more or less any context: In crypto toolkits for object-oriented
 languages (C++, Python, Pike, ...), in applications like LSH or GNUPG,
 or even in kernel space.]==])
whatis([==[Homepage: http://www.lysator.liu.se/~nisse/nettle/]==])

local root = "/software.el7/software/nettle/3.4-foss-2018a"

conflict("nettle")

if not isloaded("foss/2018a") then
    load("foss/2018a")
end

if not isloaded("GMP/6.1.2-GCCcore-6.4.0") then
    load("GMP/6.1.2-GCCcore-6.4.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib64/pkgconfig"))
setenv("EBROOTNETTLE", root)
setenv("EBVERSIONNETTLE", "3.4")
setenv("EBDEVELNETTLE", pathJoin(root, "easybuild/nettle-3.4-foss-2018a-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
