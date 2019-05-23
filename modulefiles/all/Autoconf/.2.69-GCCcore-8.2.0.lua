help([==[

Description
===========
Autoconf is an extensible package of M4 macros that produce shell scripts
 to automatically configure software source code packages. These scripts can
 adapt the packages to many kinds of UNIX-like systems without manual user
 intervention. Autoconf creates a configuration script for a package from a
 template file that lists the operating system features that the package can
 use, in the form of M4 macro calls.


More information
================
 - Homepage: http://www.gnu.org/software/autoconf/
]==])

whatis([==[Description: 
 Autoconf is an extensible package of M4 macros that produce shell scripts
 to automatically configure software source code packages. These scripts can
 adapt the packages to many kinds of UNIX-like systems without manual user
 intervention. Autoconf creates a configuration script for a package from a
 template file that lists the operating system features that the package can
 use, in the form of M4 macro calls.
]==])
whatis([==[Homepage: http://www.gnu.org/software/autoconf/]==])

local root = "/software.el7/software/Autoconf/2.69-GCCcore-8.2.0"

conflict("Autoconf")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("M4/.1.4.18-GCCcore-8.2.0") ) then
    load("M4/.1.4.18-GCCcore-8.2.0")
end

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTAUTOCONF", root)
setenv("EBVERSIONAUTOCONF", "2.69")
setenv("EBDEVELAUTOCONF", pathJoin(root, "easybuild/Autoconf-.2.69-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.1
