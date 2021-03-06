help([==[

Description
===========
CUDA (formerly Compute Unified Device Architecture) is a parallel
 computing platform and programming model created by NVIDIA and implemented by the
 graphics processing units (GPUs) that they produce. CUDA gives developers access
 to the virtual instruction set and memory of the parallel computational elements in CUDA GPUs.


More information
================
 - Homepage: https://developer.nvidia.com/cuda-toolkit
]==])

whatis([==[Description: CUDA (formerly Compute Unified Device Architecture) is a parallel
 computing platform and programming model created by NVIDIA and implemented by the
 graphics processing units (GPUs) that they produce. CUDA gives developers access
 to the virtual instruction set and memory of the parallel computational elements in CUDA GPUs.]==])
whatis([==[Homepage: https://developer.nvidia.com/cuda-toolkit]==])

local root = "/software.el7/software/CUDA/10.1.105-GCC-8.2.0-2.31.1"

conflict("CUDA")

if not ( isloaded("GCC/8.2.0-2.31.1") ) then
    load("GCC/8.2.0-2.31.1")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("CPATH", pathJoin(root, "extras/CUPTI/include"))
prepend_path("CPATH", pathJoin(root, "nvvm/include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "extras/CUPTI/lib64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "nvvm/lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64/stubs"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PATH", pathJoin(root, "nvvm/bin"))
setenv("EBROOTCUDA", root)
setenv("EBVERSIONCUDA", "10.1.105")
setenv("EBDEVELCUDA", pathJoin(root, "easybuild/CUDA-10.1.105-GCC-8.2.0-2.31.1-easybuild-devel"))

prepend_path("PATH", root)
setenv("CUDA_HOME", "/software.el7/software/CUDA/10.1.105-GCC-8.2.0-2.31.1")
setenv("CUDA_ROOT", "/software.el7/software/CUDA/10.1.105-GCC-8.2.0-2.31.1")
setenv("CUDA_PATH", "/software.el7/software/CUDA/10.1.105-GCC-8.2.0-2.31.1")
-- Built with EasyBuild version 3.9.1
