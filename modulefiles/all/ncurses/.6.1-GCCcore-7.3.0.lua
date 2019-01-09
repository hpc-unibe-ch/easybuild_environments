help([==[

Description
===========
The Ncurses (new curses) library is a free software emulation of curses in
 System V Release 4.0, and more. It uses Terminfo format, supports pads and
 color and multiple highlights and forms characters and function-key mapping,
 and has all the other SYSV-curses enhancements over BSD Curses.


More information
================
 - Homepage: http://www.gnu.org/software/ncurses/
]==])

whatis([==[Description: 
 The Ncurses (new curses) library is a free software emulation of curses in
 System V Release 4.0, and more. It uses Terminfo format, supports pads and
 color and multiple highlights and forms characters and function-key mapping,
 and has all the other SYSV-curses enhancements over BSD Curses.
]==])
whatis([==[Homepage: http://www.gnu.org/software/ncurses/]==])

local root = "/software.el7/software/ncurses/6.1-GCCcore-7.3.0"

conflict("ncurses")

if not isloaded("GCCcore/7.3.0") then
    load("GCCcore/7.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTNCURSES", root)
setenv("EBVERSIONNCURSES", "6.1")
setenv("EBDEVELNCURSES", pathJoin(root, "easybuild/ncurses-.6.1-GCCcore-7.3.0-easybuild-devel"))

-- Built with EasyBuild version 3.7.1
