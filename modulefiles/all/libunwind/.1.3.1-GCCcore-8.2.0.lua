help([==[

Description
===========
The primary goal of libunwind is to define a portable and efficient C programming interface
 (API) to determine the call-chain of a program. The API additionally provides the means to manipulate the
 preserved (callee-saved) state of each call-frame and to resume execution at any point in the call-chain
 (non-local goto). The API supports both local (same-process) and remote (across-process) operation.
 As such, the API is useful in a number of applications


More information
================
 - Homepage: http://www.nongnu.org/libunwind/
]==])

whatis([==[Description: The primary goal of libunwind is to define a portable and efficient C programming interface
 (API) to determine the call-chain of a program. The API additionally provides the means to manipulate the
 preserved (callee-saved) state of each call-frame and to resume execution at any point in the call-chain
 (non-local goto). The API supports both local (same-process) and remote (across-process) operation.
 As such, the API is useful in a number of applications]==])
whatis([==[Homepage: http://www.nongnu.org/libunwind/]==])
whatis([==[URL: http://www.nongnu.org/libunwind/]==])

local root = "/software.el7/software/libunwind/1.3.1-GCCcore-8.2.0"

conflict("libunwind")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("XZ/.5.2.4-GCCcore-8.2.0") ) then
    load("XZ/.5.2.4-GCCcore-8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBUNWIND", root)
setenv("EBVERSIONLIBUNWIND", "1.3.1")
setenv("EBDEVELLIBUNWIND", pathJoin(root, "easybuild/libunwind-.1.3.1-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
