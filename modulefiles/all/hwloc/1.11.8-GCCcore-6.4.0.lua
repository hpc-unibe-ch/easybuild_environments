help([==[

Description
===========
The Portable Hardware Locality (hwloc) software package provides a portable
 abstraction (across OS, versions, architectures, ...) of the hierarchical
 topology of modern architectures, including NUMA memory nodes, sockets, shared
 caches, cores and simultaneous multithreading. It also gathers various system
 attributes such as cache and memory information as well as the locality of I/O
 devices such as network interfaces, InfiniBand HCAs or GPUs. It primarily
 aims at helping applications with gathering information about modern computing
 hardware so as to exploit it accordingly and efficiently.


More information
================
 - Homepage: http://www.open-mpi.org/projects/hwloc/
]==])

whatis([==[Description: 
 The Portable Hardware Locality (hwloc) software package provides a portable
 abstraction (across OS, versions, architectures, ...) of the hierarchical
 topology of modern architectures, including NUMA memory nodes, sockets, shared
 caches, cores and simultaneous multithreading. It also gathers various system
 attributes such as cache and memory information as well as the locality of I/O
 devices such as network interfaces, InfiniBand HCAs or GPUs. It primarily
 aims at helping applications with gathering information about modern computing
 hardware so as to exploit it accordingly and efficiently.
]==])
whatis([==[Homepage: http://www.open-mpi.org/projects/hwloc/]==])

local root = "/software.el7/software/hwloc/1.11.8-GCCcore-6.4.0"

conflict("hwloc")

if not isloaded("GCCcore/6.4.0") then
    load("GCCcore/6.4.0")
end

if not isloaded("numactl/2.0.11-GCCcore-6.4.0") then
    load("numactl/2.0.11-GCCcore-6.4.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PATH", pathJoin(root, "sbin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTHWLOC", root)
setenv("EBVERSIONHWLOC", "1.11.8")
setenv("EBDEVELHWLOC", pathJoin(root, "easybuild/hwloc-1.11.8-GCCcore-6.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
