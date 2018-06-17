help([==[

Description
===========
Git Large File Storage (LFS) replaces large files such as audio samples, videos, 
 datasets, and graphics with text pointers inside Git, while storing the file contents on a remote server 
 like GitHub.com or GitHub Enterprise.


More information
================
 - Homepage: https://git-lfs.github.com/
]==])

whatis([==[Description: Git Large File Storage (LFS) replaces large files such as audio samples, videos, 
 datasets, and graphics with text pointers inside Git, while storing the file contents on a remote server 
 like GitHub.com or GitHub Enterprise.]==])
whatis([==[Homepage: https://git-lfs.github.com/]==])

local root = "/software.el7/software/git-lfs/2.4.2"

conflict("git-lfs")

setenv("EBROOTGITMINLFS", root)
setenv("EBVERSIONGITMINLFS", "2.4.2")
setenv("EBDEVELGITMINLFS", pathJoin(root, "easybuild/git-lfs-2.4.2-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 3.6.1
