help([==[

Description
===========
The numactl program allows you to run your application program on specific cpu's and memory nodes.
 It does this by supplying a NUMA memory policy to the operating system before running your program.
 The libnuma library provides convenient ways for you to add NUMA memory policies into your own program.


More information
================
 - Homepage: http://oss.sgi.com/projects/libnuma/
]==])

whatis([==[Description: The numactl program allows you to run your application program on specific cpu's and memory nodes.
 It does this by supplying a NUMA memory policy to the operating system before running your program.
 The libnuma library provides convenient ways for you to add NUMA memory policies into your own program.]==])
whatis([==[Homepage: http://oss.sgi.com/projects/libnuma/]==])

local root = "/software.el7/software/numactl/2.0.11-GCC-5.4.0-2.26"

conflict("numactl")

if not isloaded("GCC/5.4.0-2.26") then
    load("GCC/5.4.0-2.26")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTNUMACTL", root)
setenv("EBVERSIONNUMACTL", "2.0.11")
setenv("EBDEVELNUMACTL", pathJoin(root, "easybuild/numactl-2.0.11-GCC-5.4.0-2.26-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
