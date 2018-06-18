help([==[

Description
===========
This module file enables the Vital-IT software repository by adding
 the mdoule directory to the modulepath.
 Once this module is loaded all software contaned in repository becomes
 loadable. To see the full list issue module avail after loading this
 module.

More information
================
 - Homepage: https://www.vital-it.ch/services/
]==])

whatis([==[This module file enables the Vital-IT software repository by adding the mdoule directory to the modulepath.]==])
whatis([==[Homepage: https://www.vital-it.ch/services/]==])

prepend_path("MODULEPATH", "/software/module")
prepend_path("PATH", "/software/bin")

