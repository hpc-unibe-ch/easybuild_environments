help([==[

Description
===========
The numactl program allows you to run your application program on specific
 cpu's and memory nodes. It does this by supplying a NUMA memory policy to
 the operating system before running your program. The libnuma library provides
 convenient ways for you to add NUMA memory policies into your own program.


More information
================
 - Homepage: http://oss.sgi.com/projects/libnuma/
]==])

whatis([==[Description: 
 The numactl program allows you to run your application program on specific
 cpu's and memory nodes. It does this by supplying a NUMA memory policy to
 the operating system before running your program. The libnuma library provides
 convenient ways for you to add NUMA memory policies into your own program.
]==])
whatis([==[Homepage: http://oss.sgi.com/projects/libnuma/]==])
whatis([==[URL: http://oss.sgi.com/projects/libnuma/]==])

local root = "/software.el7/software/numactl/2.0.12-GCCcore-8.3.0"

conflict("numactl")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTNUMACTL", root)
setenv("EBVERSIONNUMACTL", "2.0.12")
setenv("EBDEVELNUMACTL", pathJoin(root, "easybuild/numactl-2.0.12-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.0.1
