help([==[

Description
===========
C, C++ and Fortran compilers from The Portland Group - PGI


More information
================
 - Homepage: http://www.pgroup.com/
]==])

whatis([==[Description: C, C++ and Fortran compilers from The Portland Group - PGI]==])
whatis([==[Homepage: http://www.pgroup.com/]==])

local root = "/software.el7/software/PGI/19.4-GCC-8.2.0-2.31.1"

conflict("PGI")

if not ( isloaded("GCCcore/.8.2.0") ) then
    load("GCCcore/.8.2.0")
end

if not ( isloaded("binutils/.2.31.1-GCCcore-8.2.0") ) then
    load("binutils/.2.31.1-GCCcore-8.2.0")
end

if not ( isloaded("numactl/2.0.12-GCCcore-8.2.0") ) then
    load("numactl/2.0.12-GCCcore-8.2.0")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "linux86-64/19.4/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "linux86-64/19.4/lib"))
prepend_path("MANPATH", pathJoin(root, "linux86-64/19.4/man"))
prepend_path("PATH", pathJoin(root, "linux86-64/19.4/bin"))
setenv("EBROOTPGI", root)
setenv("EBVERSIONPGI", "19.4")
setenv("EBDEVELPGI", pathJoin(root, "easybuild/PGI-19.4-GCC-8.2.0-2.31.1-easybuild-devel"))

prepend_path("PATH", root)
prepend_path("PGROUPD_LICENSE_FILE", "7496@lizenzserver-pgi.ubelix.unibe.ch")
setenv("PGI", "/software.el7/software/PGI/19.4-GCC-8.2.0-2.31.1")
-- Built with EasyBuild version 3.9.1
