#.rst:
# FindGLEW
# ---------
#
# Find the The OpenGL Extension Wrangler Library.
#
# Result Variables
# ^^^^^^^^^^^^^^^^
#
# This module sets the following variables:
#
# ``GLEW_FOUND``
#  True, if the system has GLEW.
# ``GLEW_INCLUDE_DIR``
#  Path to the GLEW include directory.
# ``GLEW_LIBRARY``
#  Path to the GLEW library.
# ``GLEW_MX_LIBRARY``
#  Path to the GLEW MX (Multiple Rendering Contexts) library.
# ``GLEW_SHARED_LIBRARY``
#  Path to the GLEW shared library.
# ``GLEW_MX_SHARED_LIBRARY``
#  Path to the GLEW MX (Multiple Rendering Contexts) shared library.


#=============================================================================
# Copyright 2015 Jacek Migacz (jacekmigacz@gmail.com)
#
# Distributed under the OSI-approved BSD License (the "License");
# see accompanying file Copyright.txt for details.
#
# This software is distributed WITHOUT ANY WARRANTY; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the License for more information.
#=============================================================================
# (To distribute this file outside of CMake, substitute the full
#  License text for the above reference.)

if (WIN32)
    if (DEFINED ENV{GLEW_ROOT_DIR})
        find_path(GLEW_INCLUDE_DIR "GL/glew.h" HINTS $ENV{GLEW_ROOT_DIR} PATH_SUFFIXES include DOC "Path to the GLEW include directory.")
        if (CMAKE_SIZEOF_VOID_P EQUAL 4)
            find_library(GLEW_LIBRARY "glew32" HINTS $ENV{GLEW_ROOT_DIR} PATH_SUFFIXES "lib/Release/Win32" DOC "Path to the GLEW library.")
            find_library(GLEW_MX_LIBRARY "glew32mx" HINTS $ENV{GLEW_ROOT_DIR} PATH_SUFFIXES "lib/Release MX/Win32" DOC "Path to the GLEW MX library.")
            find_file(GLEW_SHARED_LIBRARY "glew32.dll" HINTS $ENV{GLEW_ROOT_DIR} PATH_SUFFIXES "bin/Release/Win32" DOC "Path to the GLEW shared library.")
            find_file(GLEW_MX_SHARED_LIBRARY "glew32mx.dll" HINTS $ENV{GLEW_ROOT_DIR} PATH_SUFFIXES "bin/Release MX/Win32" DOC "Path to the GLEW MX shared library.")
        elseif (CMAKE_SIZEOF_VOID_P EQUAL 8)
            find_library(GLEW_LIBRARY "glew32" HINTS $ENV{GLEW_ROOT_DIR} PATH_SUFFIXES "lib/Release/x64" DOC "Path to the GLEW library.")
            find_library(GLEW_MX_LIBRARY "glew32mx" HINTS $ENV{GLEW_ROOT_DIR} PATH_SUFFIXES "lib/Release MX/x64" DOC "Path to the GLEW MX library.")
            find_file(GLEW_SHARED_LIBRARY "glew32.dll" HINTS $ENV{GLEW_ROOT_DIR} PATH_SUFFIXES "bin/Release/x64" DOC "Path to the GLEW shared library.")
            find_file(GLEW_MX_SHARED_LIBRARY "glew32mx.dll" HINTS $ENV{GLEW_ROOT_DIR} PATH_SUFFIXES "bin/Release MX/x64" DOC "Path to the GLEW MX shared library.")
        endif ()
    else ()
        message(WARNING "GLEW_ROOT_DIR is not set.")
    endif ()
endif ()

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(GLEW REQUIRED_VARS GLEW_INCLUDE_DIR GLEW_LIBRARY GLEW_MX_LIBRARY)

mark_as_advanced(GLEW_INCLUDE_DIR GLEW_LIBRARY GLEW_MX_LIBRARY GLEW_SHARED_LIBRARY GLEW_MX_SHARED_LIBRARY)
