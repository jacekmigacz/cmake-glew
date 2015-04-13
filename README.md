FindGLEW.cmake
==============

FindGLEW is a CMake module to locate GLEW headers and library path. Following variables are provided:

  * GLEW_FOUND (True, if the system has GLEW.)
  * GLEW_INCLUDE_DIR (Path to the GLEW include directory.)
  * GLEW_LIBRARY (Paths to the GLEW library.)
  * GLEW_MX_LIBRARY (Paths to the GLEW MX [Multiple Rendering Contexts] library.)
  * GLEW_SHARED_LIBRARY_PATH (Paths to the GLEW shared library.)
  * GLEW_MX_SHARED_LIBRARY_PATH (Paths to the GLEW MX [Multiple Rendering Contexts] shared library.)

### Example

    find_package(GLEW REQUIRED)
    include_directories(${GLEW_INCLUDE_DIR})
    target_link_libraries(tgt ${GLEW_LIBRARY})


### Notes

On Microsoft Windows platform, module expects to have environment variable GLEW_ROOT_DIR defined.
