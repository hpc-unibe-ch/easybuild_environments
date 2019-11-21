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
whatis([==[URL: http://www.pgroup.com/]==])

local root = "/software.el7/software/PGI/17.10-GCC-6.4.0-2.28"

conflict("PGI")

if not ( isloaded("GCCcore/.6.4.0") ) then
    load("GCCcore/.6.4.0")
end

if not ( isloaded("binutils/.2.28-GCCcore-6.4.0") ) then
    load("binutils/.2.28-GCCcore-6.4.0")
end

if not ( isloaded("numactl/2.0.11-GCCcore-6.4.0") ) then
    load("numactl/2.0.11-GCCcore-6.4.0")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "linux86-64/17.10/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "linux86-64/17.10/lib"))
prepend_path("MANPATH", pathJoin(root, "linux86-64/17.10/man"))
prepend_path("PATH", pathJoin(root, "linux86-64/17.10/bin"))
setenv("EBROOTPGI", root)
setenv("EBVERSIONPGI", "17.10")
setenv("EBDEVELPGI", pathJoin(root, "easybuild/PGI-17.10-GCC-6.4.0-2.28-easybuild-devel"))

prepend_path("PATH", root)
prepend_path("PGROUPD_LICENSE_FILE", "7496@lizenzserver-pgi.ubelix.unibe.ch")
setenv("PGI", "/software.el7/software/PGI/17.10-GCC-6.4.0-2.28")
-- Built with EasyBuild version 3.9.3
