# Install script for directory: C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/libsndfile")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/Debug/sndfile-info.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/Release/sndfile-info.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/MinSizeRel/sndfile-info.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/RelWithDebInfo/sndfile-info.exe")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/Debug/sndfile-play.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/Release/sndfile-play.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/MinSizeRel/sndfile-play.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/RelWithDebInfo/sndfile-play.exe")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/Debug/sndfile-convert.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/Release/sndfile-convert.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/MinSizeRel/sndfile-convert.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/RelWithDebInfo/sndfile-convert.exe")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/Debug/sndfile-cmp.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/Release/sndfile-cmp.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/MinSizeRel/sndfile-cmp.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/RelWithDebInfo/sndfile-cmp.exe")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/Debug/sndfile-metadata-set.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/Release/sndfile-metadata-set.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/MinSizeRel/sndfile-metadata-set.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/RelWithDebInfo/sndfile-metadata-set.exe")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/Debug/sndfile-metadata-get.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/Release/sndfile-metadata-get.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/MinSizeRel/sndfile-metadata-get.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/RelWithDebInfo/sndfile-metadata-get.exe")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/Debug/sndfile-interleave.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/Release/sndfile-interleave.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/MinSizeRel/sndfile-interleave.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/RelWithDebInfo/sndfile-interleave.exe")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/Debug/sndfile-deinterleave.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/Release/sndfile-deinterleave.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/MinSizeRel/sndfile-deinterleave.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/RelWithDebInfo/sndfile-deinterleave.exe")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/Debug/sndfile-concat.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/Release/sndfile-concat.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/MinSizeRel/sndfile-concat.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/RelWithDebInfo/sndfile-concat.exe")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/Debug/sndfile-salvage.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/Release/sndfile-salvage.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/MinSizeRel/sndfile-salvage.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/RelWithDebInfo/sndfile-salvage.exe")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/Debug/sndfile.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/Release/sndfile.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/MinSizeRel/sndfile.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/RelWithDebInfo/sndfile.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/include/sndfile.h"
    "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/include/sndfile.hh"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SndFileTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SndFileTargets.cmake"
         "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SndFileTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SndFileTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SndFileTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SndFileTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SndFileTargets-debug.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SndFileTargets-minsizerel.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SndFileTargets-relwithdebinfo.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SndFileTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE RENAME "SndFileConfig.cmake" FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/SndFileConfig2.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/SndFileConfigVersion.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man1" TYPE FILE FILES
    "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/man/sndfile-info.1"
    "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/man/sndfile-play.1"
    "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/man/sndfile-convert.1"
    "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/man/sndfile-cmp.1"
    "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/man/sndfile-metadata-get.1"
    "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/man/sndfile-concat.1"
    "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/man/sndfile-interleave.1"
    "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/man/sndfile-salvage.1"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man1" TYPE FILE RENAME "sndfile-metadata-set.1" FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/man/sndfile-metadata-get.1")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man1" TYPE FILE RENAME "sndfile-deinterleave.1" FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/man/sndfile-interleave.1")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/libsndfile" TYPE FILE FILES
    "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/docs/index.md"
    "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/docs/libsndfile.jpg"
    "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/docs/libsndfile.css"
    "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/docs/print.css"
    "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/docs/api.md"
    "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/docs/command.md"
    "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/docs/bugs.md"
    "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/docs/formats.md"
    "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/docs/sndfile_info.md"
    "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/docs/new_file_type_howto.md"
    "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/docs/win32.md"
    "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/docs/FAQ.md"
    "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/docs/lists.md"
    "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/docs/embedded_files.md"
    "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/docs/octave.md"
    "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/docs/tutorial.md"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/sndfile.pc")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "C:/Users/miesz/Downloads/JASol (2)/JASol/JAApp/libsndfile-master/CMakeBuild/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
