help([==[

Description
===========
This bundle collect the standard GNU build tools: Autoconf, Automake
 and libtool


More information
================
 - Homepage: http://autotools.io
]==])

whatis([==[Description: 
 This bundle collect the standard GNU build tools: Autoconf, Automake
 and libtool
]==])
whatis([==[Homepage: http://autotools.io]==])

local root = "/software.el7/software/Autotools/20170619-GCCcore-6.4.0"

conflict("Autotools")

if not isloaded("GCCcore/6.4.0") then
    load("GCCcore/6.4.0")
end

if not isloaded("Autoconf/.2.69-GCCcore-6.4.0") then
    load("Autoconf/.2.69-GCCcore-6.4.0")
end

if not isloaded("Automake/.1.15.1-GCCcore-6.4.0") then
    load("Automake/.1.15.1-GCCcore-6.4.0")
end

if not isloaded("libtool/.2.4.6-GCCcore-6.4.0") then
    load("libtool/.2.4.6-GCCcore-6.4.0")
end

setenv("EBROOTAUTOTOOLS", root)
setenv("EBVERSIONAUTOTOOLS", "20170619")
setenv("EBDEVELAUTOTOOLS", pathJoin(root, "easybuild/Autotools-20170619-GCCcore-6.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
