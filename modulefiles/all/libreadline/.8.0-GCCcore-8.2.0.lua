help([==[

Description
===========
The GNU Readline library provides a set of functions for use by applications
 that allow users to edit command lines as they are typed in. Both Emacs and
 vi editing modes are available. The Readline library includes additional
 functions to maintain a list of previously-entered command lines, to recall
 and perhaps reedit those lines, and perform csh-like history expansion on
 previous commands.


More information
================
 - Homepage: http://cnswww.cns.cwru.edu/php/chet/readline/rltop.html
]==])

whatis([==[Description: 
 The GNU Readline library provides a set of functions for use by applications
 that allow users to edit command lines as they are typed in. Both Emacs and
 vi editing modes are available. The Readline library includes additional
 functions to maintain a list of previously-entered command lines, to recall
 and perhaps reedit those lines, and perform csh-like history expansion on
 previous commands.
]==])
whatis([==[Homepage: http://cnswww.cns.cwru.edu/php/chet/readline/rltop.html]==])
whatis([==[URL: http://cnswww.cns.cwru.edu/php/chet/readline/rltop.html]==])

local root = "/software.el7/software/libreadline/8.0-GCCcore-8.2.0"

conflict("libreadline")

if not ( isloaded("GCCcore/8.2.0") ) then
    load("GCCcore/8.2.0")
end

if not ( isloaded("ncurses/.6.1-GCCcore-8.2.0") ) then
    load("ncurses/.6.1-GCCcore-8.2.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBREADLINE", root)
setenv("EBVERSIONLIBREADLINE", "8.0")
setenv("EBDEVELLIBREADLINE", pathJoin(root, "easybuild/libreadline-.8.0-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.9.3
