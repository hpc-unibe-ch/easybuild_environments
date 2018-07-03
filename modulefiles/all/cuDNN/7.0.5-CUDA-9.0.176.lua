help([==[

Description
===========
The NVIDIA CUDA Deep Neural Network library (cuDNN) is a GPU-accelerated library of primitives for
    deep neural networks.


More information
================
 - Homepage: https://developer.nvidia.com/cudnn
]==])

whatis([==[Description: The NVIDIA CUDA Deep Neural Network library (cuDNN) is a GPU-accelerated library of primitives for
    deep neural networks.]==])
whatis([==[Homepage: https://developer.nvidia.com/cudnn]==])

local root = "/software.el7/software/cuDNN/7.0.5-CUDA-9.0.176"

conflict("cuDNN")

if not isloaded("CUDA/9.0.176") then
    load("CUDA/9.0.176")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
setenv("EBROOTCUDNN", root)
setenv("EBVERSIONCUDNN", "7.0.5")
setenv("EBDEVELCUDNN", pathJoin(root, "easybuild/cuDNN-7.0.5-CUDA-9.0.176-easybuild-devel"))

-- Built with EasyBuild version 3.6.1
