IF(simple_DIR)
  # SIMPLE has been built already
  FIND_PACKAGE(simple REQUIRED)
  MESSAGE(STATUS "Using an already built SIMPLE installation")
ELSE()
  # SIMPLE has not been built yet, so download it with all deps and build them as a external projects.
  SetGitRepositoryTag(
    flatbuffers
    "${GIT_PROTOCOL}://github.com/google/flatbuffers.git"
    "master"
    )

  SetGitRepositoryTag(
    libzmq
    "${GIT_PROTOCOL}://github.com/zeromq/libzmq.git"
    "master"
    )

  SetGitRepositoryTag(
    simple
    "${GIT_PROTOCOL}://github.com/IFL-CAMP/simple.git"
    "master"
    )

  SET (PLUS_FLATBUFFERS_SRC_DIR "${CMAKE_BINARY_DIR}/Deps/flatbuffers")
  SET (PLUS_FLATBUFFERS_BIN_DIR "${CMAKE_BINARY_DIR}/Deps/flatbuffers-bin" CACHE INTERNAL "Path to store Flatbuffers binaries")
  SET (PLUS_FLATBUFFERS_DIR "${CMAKE_BINARY_DIR}/Deps/flatbuffers-install" CACHE INTERNAL "Path to store Flatbuffers installation")


  SET (PLUS_LIBZMQ_SRC_DIR "${CMAKE_BINARY_DIR}/Deps/libzmq")
  SET (PLUS_LIBZMQ_BIN_DIR "${CMAKE_BINARY_DIR}/Deps/libzmq-bin" CACHE INTERNAL "Path to store libzmq binaries")
  SET (PLUS_LIBZMQ_DIR "${CMAKE_BINARY_DIR}/Deps/libzmq-install" CACHE INTERNAL "Path to store libzmq installation")

  SET (PLUS_SIMPLE_SRC_DIR "${CMAKE_BINARY_DIR}/Deps/simple")
  SET (PLUS_SIMPLE_BIN_DIR "${CMAKE_BINARY_DIR}/Deps/simple-bin" CACHE INTERNAL "Path to store SIMPLE binaries")
  SET (PLUS_SIMPLE_DIR "${CMAKE_BINARY_DIR}/Deps/simple-install" CACHE INTERNAL "Path to store SIMPLE installation")

  ExternalProject_Add( Flatbuffers
    "${PLUSBUILD_EXTERNAL_PROJECT_CUSTOM_COMMANDS}"
    PREFIX "${CMAKE_BINARY_DIR}/Deps/flatbuffers-prefix"
    SOURCE_DIR "${PLUS_FLATBUFFERS_SRC_DIR}"
    BINARY_DIR "${PLUS_FLATBUFFERS_BIN_DIR}"
    #--Download step--------------
    GIT_REPOSITORY ${flatbuffers_GIT_REPOSITORY}
    GIT_TAG ${flatbuffers_GIT_TAG}
    #--Configure step-------------
    CMAKE_ARGS
      -DCMAKE_RUNTIME_OUTPUT_DIRECTORY:PATH=${CMAKE_RUNTIME_OUTPUT_DIRECTORY}
      -DCMAKE_LIBRARY_OUTPUT_DIRECTORY:PATH=${CMAKE_LIBRARY_OUTPUT_DIRECTORY}
      -DCMAKE_ARCHIVE_OUTPUT_DIRECTORY:PATH=${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}
      -DCMAKE_BUILD_TYPE=Release
      -DCMAKE_INSTALL_PREFIX=${PLUS_FLATBUFFERS_DIR}
    #--Build step-----------------
    BUILD_ALWAYS 1
    #--Install step-----------------
    INSTALL_DIR=${PLUS_FLATBUFFERS_DIR}
    )	
  set(PLUS_FLATBUFFERS_DIR "${PLUS_FLATBUFFERS_DIR}/lib/cmake/flatbuffers" INTERNAL "flatbuffers directory to be used by subprojects")
	
  ExternalProject_Add( libzmq
    "${PLUSBUILD_EXTERNAL_PROJECT_CUSTOM_COMMANDS}"
    PREFIX "${CMAKE_BINARY_DIR}/Deps/libzmq-prefix"
    SOURCE_DIR "${PLUS_LIBZMQ_SRC_DIR}"
    BINARY_DIR "${PLUS_LIBZMQ_BIN_DIR}"
    #--Download step--------------
    GIT_REPOSITORY ${libzmq_GIT_REPOSITORY}
    GIT_TAG ${libzmq_GIT_TAG}
    #--Configure step-------------
    CMAKE_ARGS
      -DCMAKE_RUNTIME_OUTPUT_DIRECTORY:PATH=${CMAKE_RUNTIME_OUTPUT_DIRECTORY}
      -DCMAKE_LIBRARY_OUTPUT_DIRECTORY:PATH=${CMAKE_LIBRARY_OUTPUT_DIRECTORY}
      -DCMAKE_ARCHIVE_OUTPUT_DIRECTORY:PATH=${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}
      -DCMAKE_BUILD_TYPE=Release
      -DZMQ_BUILD_TESTS=OFF
      -DCMAKE_INSTALL_PREFIX=${PLUS_LIBZMQ_DIR}
    #--Build step-----------------
    BUILD_ALWAYS 1
    #--Install step-----------------
    INSTALL_DIR=${PLUS_LIBZMQ_DIR}
    )
  set(PLUS_LIBZMQ_DIR "${PLUS_LIBZMQ_DIR}/CMake" INTERNAL "libzmq directory to be used by subprojects")


  ExternalProject_Add( simple
    "${PLUSBUILD_EXTERNAL_PROJECT_CUSTOM_COMMANDS}"
    PREFIX "${CMAKE_BINARY_DIR}/Deps/simple-prefix"
    SOURCE_DIR "${PLUS_SIMPLE_SRC_DIR}"
    BINARY_DIR "${PLUS_SIMPLE_BIN_DIR}"
    #--Download step--------------
    GIT_REPOSITORY ${simple_GIT_REPOSITORY}
    GIT_TAG ${simple_GIT_TAG}
    #--Configure step-------------
    CMAKE_ARGS 
      -DCMAKE_RUNTIME_OUTPUT_DIRECTORY:PATH=${CMAKE_RUNTIME_OUTPUT_DIRECTORY}
      -DCMAKE_LIBRARY_OUTPUT_DIRECTORY:PATH=${CMAKE_LIBRARY_OUTPUT_DIRECTORY}
      -DCMAKE_ARCHIVE_OUTPUT_DIRECTORY:PATH=${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}
      -DBUILD_EXAMPLES:BOOL=OFF
      -DBUILD_TESTS:BOOL=OFF
      -DZeroMQ_DIR=${PLUS_LIBZMQ_DIR}
      -DFlatbuffers_DIR=${PLUS_FLATBUFFERS_DIR}
      -DCMAKE_BUILD_TYPE=Release
      -DCMAKE_INSTALL_PREFIX=${PLUS_SIMPLE_DIR}
    #--Build step-----------------
    BUILD_ALWAYS 1
    #--Install step-----------------
    INSTALL_DIR=${PLUS_SIMPLE_DIR}
    #--Dependences------------------
    DEPENDS Flatbuffers libzmq
    )  
  set(PLUS_SIMPLE_DIR "${PLUS_SIMPLE_DIR}/lib/cmake/simple" INTERNAL "SIMPLE directory to be used by subprojects")
ENDIF()
