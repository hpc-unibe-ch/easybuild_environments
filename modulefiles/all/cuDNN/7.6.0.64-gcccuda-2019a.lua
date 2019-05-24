help([==[

Description
===========
The NVIDIA CUDA Deep Neural Network library (cuDNN) is
a GPU-accelerated library of primitives for deep neural networks.


More information
================
 - Homepage: https://developer.nvidia.com/cudnn
]==])

whatis([==[Description: The NVIDIA CUDA Deep Neural Network library (cuDNN) is
a GPU-accelerated library of primitives for deep neural networks.]==])
whatis([==[Homepage: https://developer.nvidia.com/cudnn]==])

local root = "/software.el7/software/cuDNN/7.6.0.64-gcccuda-2019a"

conflict("cuDNN")

if not ( isloaded("gcccuda/2019a") ) then
    load("gcccuda/2019a")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
setenv("EBROOTCUDNN", root)
setenv("EBVERSIONCUDNN", "7.6.0.64")
setenv("EBDEVELCUDNN", pathJoin(root, "easybuild/cuDNN-7.6.0.64-gcccuda-2019a-easybuild-devel"))

-- Built with EasyBuild version 3.9.1
