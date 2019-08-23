help([==[

Description
===========
SQLite: SQL Database Engine in a C Library


More information
================
 - Homepage: http://www.sqlite.org/
]==])

whatis([==[Description: SQLite: SQL Database Engine in a C Library]==])
whatis([==[Homepage: http://www.sqlite.org/]==])
whatis([==[URL: http://www.sqlite.org/]==])

local root = "/software.el7/software/SQLite/3.27.2-GCCcore-8.2.0"

conflict("SQLite")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("libreadline/.8.0-GCCcore-8.2.0") ) then
    load("libreadline/.8.0-GCCcore-8.2.0")
end

if not ( isloaded("Tcl/.8.6.9-GCCcore-8.2.0") ) then
    load("Tcl/.8.6.9-GCCcore-8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTSQLITE", root)
setenv("EBVERSIONSQLITE", "3.27.2")
setenv("EBDEVELSQLITE", pathJoin(root, "easybuild/SQLite-3.27.2-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
