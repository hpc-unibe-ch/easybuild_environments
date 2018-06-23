help([==[

Description
===========
Python is a programming language that lets you work more quickly and integrate your systems
 more effectively.


More information
================
 - Homepage: http://python.org/
]==])

whatis([==[Description: Python is a programming language that lets you work more quickly and integrate your systems
 more effectively.]==])
whatis([==[Homepage: http://python.org/]==])

local root = "/software.el7/software/Python/2.7.14-GCCcore-6.4.0-bare"

conflict("Python")

if not isloaded("GCCcore/6.4.0") then
    load("GCCcore/6.4.0")
end

if not isloaded("bzip2/.1.0.6-GCCcore-6.4.0") then
    load("bzip2/.1.0.6-GCCcore-6.4.0")
end

if not isloaded("zlib/.1.2.11-GCCcore-6.4.0") then
    load("zlib/.1.2.11-GCCcore-6.4.0")
end

if not isloaded("libreadline/.7.0-GCCcore-6.4.0") then
    load("libreadline/.7.0-GCCcore-6.4.0")
end

if not isloaded("ncurses/.6.0-GCCcore-6.4.0") then
    load("ncurses/.6.0-GCCcore-6.4.0")
end

if not isloaded("SQLite/3.20.1-GCCcore-6.4.0") then
    load("SQLite/3.20.1-GCCcore-6.4.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTPYTHON", root)
setenv("EBVERSIONPYTHON", "2.7.14")
setenv("EBDEVELPYTHON", pathJoin(root, "easybuild/Python-2.7.14-GCCcore-6.4.0-bare-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
