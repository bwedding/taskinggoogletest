# cctc-toolchain.cmake
set(CMAKE_SYSTEM_NAME Generic)

set(CMAKE_C_COMPILER "D:/TASKING/TriCore v6.3r1/ctc/bin/ctc_wrapper.bat")
set(CMAKE_CXX_COMPILER "D:/TASKING/TriCore v6.3r1/ctc/bin/cptc.exe")

set(CMAKE_C_FLAGS_INIT "")
set(CMAKE_CXX_FLAGS_INIT "")

# Remove default options that are not compatible with the Tasking TriCore compilers
foreach(lang C CXX)
    string(REPLACE "--create=o" "" CMAKE_${lang}_LINK_EXECUTABLE "${CMAKE_${lang}_LINK_EXECUTABLE}")
    string(REPLACE "-rdynamic" "" CMAKE_SHARED_LIBRARY_LINK_${lang}_FLAGS "${CMAKE_SHARED_LIBRARY_LINK_${lang}_FLAGS}")
    string(REPLACE "-Wl,--enable-new-dtags" "" CMAKE_SHARED_LIBRARY_CREATE_${lang}_FLAGS "${CMAKE_SHARED_LIBRARY_CREATE_${lang}_FLAGS}")
endforeach()

# Additional settings can be added here if needed
