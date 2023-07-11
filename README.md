# taskinggoogletest

1. Download and install Ninja build here: https://ninja-build.org/
2. Run CMake
   A. Set source code to your googletest directory
   B. Create an empty folder for the CMake build file generation
  ![image](https://github.com/bwedding/taskinggoogletest/assets/1916594/e02f6289-0a35-4ada-a1ee-4b0d9d27795c)
  C. Click "Configure" and select Ninja generator and select "Specify toolchain for cross compiling"
![image](https://github.com/bwedding/taskinggoogletest/assets/1916594/b964e2cd-162d-4caf-bcfa-daafa9158d22)
  D. Select the Tasking.cmake toolchain file provided. It should have been copied into:
      \CMake\share\cmake-3.26\Modules\Compiler
   ![image](https://github.com/bwedding/taskinggoogletest/assets/1916594/2bbaadcc-dda4-4458-a823-6a329cdbc1b5)

E. Click "Finish". Configuration should complete with no errors.
F. Click "Generate" to generate the build files
G. In a command prompt, navigate to the build folder created in step 2.B
H. Run "Ninja all"




