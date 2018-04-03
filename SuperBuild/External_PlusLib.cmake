# --------------------------------------------------------------------------
# PlusLib
SET(PLUSBUILD_ADDITIONAL_SDK_ARGS)

IF(PLUSBUILD_USE_3DSlicer)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DSLICER_BIN_DIRECTORY:PATH=${PLUSBUILD_SLICER_BIN_DIRECTORY}
    )
ENDIF()

IF(PLUSBUILD_USE_OpenIGTLink)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DOpenIGTLink_DIR:PATH=${PLUS_OpenIGTLink_DIR}
    -DOpenIGTLinkIO_DIR:PATH=${PLUS_OpenIGTLinkIO_DIR}
    )
ENDIF()

IF(PLUSBUILD_USE_SIMPLE)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -Dsimple_DIR:PATH=${PLUS_SIMPLE_DIR}
    )
ENDIF()

IF(PLUSBUILD_USE_Tesseract)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -Dtesseract_DIR:PATH=${PLUS_tesseract_DIR}
    )
ENDIF()

IF(PLUSBUILD_USE_OpenCV)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DOpenCV_DIR:PATH=${PLUS_OpenCV_DIR}
    )
ENDIF()

IF(PLUSBUILD_USE_aruco)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -Daruco_DIR:PATH=${PLUS_aruco_DIR}
    )
ENDIF()

IF(PLUS_USE_ULTRASONIX_VIDEO)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DULTRASONIX_SDK_DIR:PATH=${ULTRASONIX_SDK_DIR}
    -DPLUS_ULTRASONIX_SDK_MAJOR_VERSION:STRING=${PLUS_ULTRASONIX_SDK_MAJOR_VERSION}
    -DPLUS_ULTRASONIX_SDK_MINOR_VERSION:STRING=${PLUS_ULTRASONIX_SDK_MINOR_VERSION}
    -DPLUS_ULTRASONIX_SDK_PATCH_VERSION:STRING=${PLUS_ULTRASONIX_SDK_PATCH_VERSION}
    -DPLUS_TEST_ULTRASONIX:BOOL=${PLUS_TEST_ULTRASONIX}
    )
  IF(PLUS_TEST_ULTRASONIX)
    LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
      -DPLUS_TEST_ULTRASONIX_IP_ADDRESS:STRING=${PLUS_TEST_ULTRASONIX_IP_ADDRESS}
      )
  ENDIF()
ENDIF()

IF(PLUS_USE_BKPROFOCUS_VIDEO)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DGRABBIELIB_SOURCE_DIR:PATH=${PLUS_GRABBIELIB_SOURCE_DIR}
    -DPLUS_TEST_BKPROFOCUS:BOOL=${PLUS_TEST_BKPROFOCUS}
    )
  IF(PLUS_USE_BKPROFOCUS_CAMERALINK)
    LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
      -DDALSASAPERA_LIB_DIR:PATH=${DALSASAPERA_LIB_DIR}
      )
  ENDIF()
ENDIF()

IF(PLUS_USE_OPTIMET_CONOPROBE)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DOPTIMETSMART32SDK_INCLUDE_DIR:PATH=${OPTIMETSMART32SDK_INCLUDE_DIR}
    -DOPTIMETSMART32SDK_64BIT_BINARY_DIR:PATH=${OPTIMETSMART32SDK_64BIT_BINARY_DIR}
    -DOPTIMETSMART32SDK_64BIT_LIBRARY:PATH=${OPTIMETSMART32SDK_64BIT_LIBRARY}
    -DOPTIMETSMART32SDK_32BIT_BINARY_DIR:PATH=${OPTIMETSMART32SDK_32BIT_BINARY_DIR}
    -DOPTIMETSMART32SDK_32BIT_LIBRARY:PATH=${OPTIMETSMART32SDK_32BIT_LIBRARY}
    )
ENDIF()

IF(PLUS_USE_OPTITRACK)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DOPTITRACK_MOTIVE_INCLUDE_DIR:PATH=${MOTIVE_API_INCLUDE_DIR}
    -DOPTITRACK_MOTIVE_LIBRARY_DIR:PATH=${MOTIVE_API_LIBRARY_DIR}
    -DOPTITRACK_MOTIVE_BINARY_DIR:PATH=${MOTIVE_API_BINARY_DIR}
    -DOPTITRACK_MOTIVE_LIBRARY_NAME:STRING=${MOTIVE_API_LIBRARY_NAME}
    -DOPTITRACK_MOTIVE_BINARY_NAME:STRING=${MOTIVE_API_BINARY_NAME}

    -DOPTITRACK_NATNET_INCLUDE_DIR:PATH=${NATNET_SDK_INCLUDE_DIR}
    -DOPTITRACK_NATNET_LIBRARY_DIR:PATH=${NATNET_SDK_LIBRARY_DIR}
    -DOPTITRACK_NATNET_BINARY_DIR:PATH=${NATNET_SDK_BINARY_DIR}

    -DOPTITRACK_OPENMP_DIR:PATH=${MOTIVE_OPENMP_DIR}
    -DOPTITRACK_MSVC80_OPENMP_DIR:PATH=${MOTIVE_MSVC80_OPENMP_DIR}
    )
ENDIF()

IF(PLUS_USE_ICCAPTURING_VIDEO)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DICCAPTURING_INCLUDE_DIR:PATH=${ICCAPTURING_INCLUDE_DIR}
    -DICCAPTURING_TIS_UDSHL_STATIC_LIB:PATH=${ICCAPTURING_TIS_UDSHL_STATIC_LIB}
    -DICCAPTURING_TIS_UDSHL_SHARED_LIB:PATH=${ICCAPTURING_TIS_UDSHL_SHARED_LIB}
    -DICCAPTURING_TIS_UDSHLD_STATIC_LIB:PATH=${ICCAPTURING_TIS_UDSHLD_STATIC_LIB}
    -DICCAPTURING_TIS_UDSHLD_SHARED_LIB:PATH=${ICCAPTURING_TIS_UDSHLD_SHARED_LIB}
    )
ENDIF()

IF(PLUS_USE_CAPISTRANO_VIDEO)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DCAPISTRANO_INCLUDE_DIR:PATH=${CAPISTRANO_INCLUDE_DIR}
    -DCAPISTRANO_LIBRARY_DIR:PATH=${CAPISTRANO_LIBRARY_DIR}
    -DCAPISTRANO_BINARY_DIR:PATH=${CAPISTRANO_BINARY_DIR}
    -DCAPISTRANO_WIN32_BINARY_DIR:PATH=${CAPISTRANO_WIN32_BINARY_DIR}
    -DCAPISTRANO_WIN64_BINARY_DIR:PATH=${CAPISTRANO_WIN64_BINARY_DIR}
    )
ENDIF()

IF(PLUS_USE_WINPROBE_VIDEO)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DWINPROBESDK_DIR:PATH=${WINPROBESDK_DIR}
    )
ENDIF()

IF(PLUS_USE_INTERSON_VIDEO)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DINTERSON_INCLUDE_DIR:PATH=${INTERSON_INCLUDE_DIR}
    -DINTERSON_LIBRARY_DIR:PATH=${INTERSON_LIBRARY_DIR}
    -DINTERSON_BINARY_DIR:PATH=${INTERSON_BINARY_DIR}
    -DINTERSON_WIN32_BINARY_DIR:PATH=${INTERSON_WIN32_BINARY_DIR}
    -DINTERSON_WIN64_BINARY_DIR:PATH=${INTERSON_WIN64_BINARY_DIR}
    )
ENDIF()

IF(PLUS_USE_INTERSONSDKCXX_VIDEO)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DIntersonSDKCxx_DIR:PATH=${IntersonSDKCxx_DIR}
    )
ENDIF()

IF(PLUS_USE_STEALTHLINK)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DSTEALTHLINK_INCLUDE_DIRS:PATH=${STEALTHLINK_INCLUDE_DIRS}
    -DSTEALTHLINK_STEALTHLINK_STATIC_LIBRARY:PATH=${STEALTHLINK_STEALTHLINK_STATIC_LIBRARY}
    )
  IF(WIN32)
    LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
      -DSTEALTHLINK_STEALTHLINK_SHARED_LIBRARY:PATH=${STEALTHLINK_STEALTHLINK_SHARED_LIBRARY}
      -DSTEALTHLINK_STEALTHLINKD_STATIC_LIBRARY:PATH=${STEALTHLINK_STEALTHLINKD_STATIC_LIBRARY}
      -DSTEALTHLINK_STEALTHLINKD_SHARED_LIBRARY:PATH=${STEALTHLINK_STEALTHLINKD_SHARED_LIBRARY}
    )
  ENDIF()
ENDIF()

IF(PLUS_USE_NDI)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -Dndicapi_DIR:PATH=${PLUS_ndicapi_DIR}
    )
ENDIF()

IF(PLUS_USE_NDI_CERTUS)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DNDIOAPI_LIBRARY:PATH=${NDIOAPI_LIBRARY}
    -DNDIOAPI_BINARY_DIR:PATH=${NDIOAPI_BINARY_DIR}
    -DNDIOAPI_INCLUDE_DIR:PATH=${NDIOAPI_INCLUDE_DIR}
    )
ENDIF()

IF(PLUS_USE_MICRONTRACKER)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DMicronTracker_INCLUDE_DIR:PATH=${MicronTracker_INCLUDE_DIR}
    -DMicronTracker_LIBRARY:PATH=${MicronTracker_LIBRARY}
    -DMicronTracker_BINARY_DIR:PATH=${MicronTracker_BINARY_DIR}
    )
ENDIF()
IF(PLUS_USE_OPENHAPTICS)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DOpenHaptics_INCLUDE_DIR:PATH=${OpenHaptics_INCLUDE_DIRS}
    -DHLAPI_HLU_INCLUDE_DIR:PATH=${HLAPI_HLU_INCLUDE_DIR}
    -DHD_LIBRARY_RELEASE:PATH=${HDAPI_LIBRARY_RELEASE}
    -DHL_LIBRARY_RELEASE:PATH=${HLAPI_LIBRARY_RELEASE}
    -DHDU_LIBRARY_RELEASE:PATH=${HDAPI_HDU_LIBRARY_RELEASE}
    -DHLU_LIBRARY_RELEASE:PATH=${HLAPI_HLU_LIBRARY_RELEASE}
    -DHD_LIBRARY_DEBUG:PATH=${HDAPI_LIBRARY_DEBUG}
    -DHL_LIBRARY_DEBUG:PATH=${HLAPI_LIBRARY_DEBUG}
    -DHDU_LIBRARY_DEBUG:PATH=${HDAPI_HDU_LIBRARY_DEBUG}
    -DHLU_LIBRARY_DEBUG:PATH=${HLAPI_HLU_LIBRARY_DEBUG}
    -DOpenHaptics_BINARY_DIR:PATH=${OpenHaptics_BINARY_DIR}
    -DOpenHaptics_UTILITIES_BINARY_DIR:PATH=${OpenHaptics_UTILITIES_BINARY_DIR}
  )
ENDIF()

IF(PLUS_USE_INFRARED_SEEK_CAM)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DLIBUSB_INCLUDE_DIR:PATH=${LIBUSB_INCLUDE_DIR}
    -DLIBUSB_LIBRARY:PATH=${LIBUSB_LIBRARY}
  )
ENDIF()

IF(PLUS_USE_INTELREALSENSE)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DINTELREALSENSE_INCLUDE_DIR:PATH=${RSSDK_INCLUDE_DIRS}
    -DINTELREALSENSE_RELEASE_LIB:PATH=${RSSDK_LIBRARY}
    -DINTELREALSENSE_DEBUG_LIB:PATH=${RSSDK_LIBRARY_DEBUG}
    #-DINTELREALSENSE_BINARY_DIR:PATH=${INTELREALSENSE_BINARY_DIR}
    )
ENDIF()

IF(PLUS_USE_NVIDIA_DVP)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DNVIDIA_DVP_INCLUDE_DIR:PATH=${NVIDIA_DVP_INCLUDE_DIR}
    -DNVIDIA_DVP_BINARY_DIR:PATH=${NVIDIA_DVP_BINARY_DIR}
    -DNVIDIA_DVP_LIB_DIR:PATH=${NVIDIA_DVP_LIB_DIR}
    -DQuadroSDI_ROOT_DIR:PATH=${QuadroSDI_ROOT_DIR}
    )
ENDIF()

IF(PLUS_USE_OvrvisionPro)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DOvrvisionPro_DIR:PATH=${PLUS_OvrvisionPro_DIR}
    )
ENDIF()

IF(PLUS_USE_IntuitiveDaVinci)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DIntuitiveDaVinci_INCLUDE_DIR:PATH=${IntuitiveDaVinci_INCLUDE_DIR}
    -DIntuitiveDaVinci_LIBRARY:PATH=${IntuitiveDaVinci_LIBRARY}
    )
ENDIF()

IF(PLUS_USE_MMF_VIDEO OR PLUS_USE_TELEMED_VIDEO)
  # Get latest full Windows SDK (that contains actual header and lib files)
  FIND_PACKAGE(WindowsSDK REQUIRED)
  SET(WINDOWS_SDK_ROOT_DIRS ${WINDOWSSDK_PREFERRED_FIRST_DIRS})
  SET(WINDOWS_SDK_ROOT_DIR "")
  SET(WINDOWS_SDK_INCLUDE_DIRS "")
  SET(WINDOWS_SDK_LIBRARY_DIRS "")
  FOREACH(_dir ${WINDOWS_SDK_ROOT_DIRS})
    SET(WINDOWS_SDK_ROOT_DIR "${_dir}")
    SET(WINDOWS_SDK_INCLUDE_DIRS "NOTFOUND")
    SET(WINDOWS_SDK_LIBRARY_DIRS "NOTFOUND")
    get_windowssdk_include_dirs("${_dir}" WINDOWS_SDK_INCLUDE_DIRS)
    get_windowssdk_library_dirs("${_dir}" WINDOWS_SDK_LIBRARY_DIRS)
    IF(NOT "${WINDOWS_SDK_INCLUDE_DIRS}" STREQUAL "NOTFOUND" AND NOT "${WINDOWS_SDK_LIBRARY_DIRS}" STREQUAL "NOTFOUND")
      INCLUDE(TestWindowsSDK)
      IF(PLUS_WINDOWS_SDK_IS_COMPATIBLE)
        # Found a compatible Windows SDK
        break()
      ENDIF()
    ENDIF()
  ENDFOREACH()

  IF(PLUS_WINDOWS_SDK_IS_COMPATIBLE)
    STRING(REPLACE ";" "|" _TMP_INCLUDE_STR "${WINDOWS_SDK_INCLUDE_DIRS}")
    LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
      -DWINDOWS_SDK_INCLUDE_DIRS:STRING=${_TMP_INCLUDE_STR}
      )
  ELSE()
    MESSAGE(WARNING "Windows SDKs found at ${WINDOWS_SDK_ROOT_DIRS} are not compatible with Plus")
  ENDIF()
ENDIF()

IF(PLUS_USE_MMF_VIDEO)
  IF(NOT PLUS_WINDOWS_SDK_IS_COMPATIBLE)
    MESSAGE(FATAL_ERROR "This project requires Windows SDK for supporting the Microsoft Media Foundation imaging devices. Either install a recent Windows SDK or turn off PLUS_USE_MMF_VIDEO.")
  ENDIF()
  IF(PLUS_TEST_MMF_VIDEO)
    LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
      -DPLUS_TEST_MMF_VIDEO:BOOL=${PLUS_TEST_MMF_VIDEO}
      )
  ENDIF()
ENDIF()

IF(PLUS_USE_TELEMED_VIDEO)
  IF(NOT PLUS_WINDOWS_SDK_IS_COMPATIBLE)
    MESSAGE(FATAL_ERROR "This project requires Windows SDK for supporting the Telemed ultrasound probes. Either install a recent Windows SDK or turn off PLUS_USE_TELEMED_VIDEO.")
  ENDIF()
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DTELEMED_INCLUDE_DIR:PATH=${TELEMED_INCLUDE_DIR}
    )
ENDIF()

IF(PLUS_USE_THORLABS_VIDEO)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DTHORLABS_INCLUDE_DIR:PATH=${THORLABS_INCLUDE_DIR}
    -DTHORLABS_LIBRARY_DIR:PATH=${THORLABS_LIBRARY_DIR}
    )
ENDIF()

IF(PLUS_USE_PHILIPS_3D_ULTRASOUND)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DPhilips_BINARY_DIRS:PATH=${Philips_BINARY_DIRS}
    -DPhilips_INCLUDE_DIRS:PATH=${Philips_INCLUDE_DIRS}
    -DPhilips_LIBRARY_DIR:PATH=${Philips_LIBRARY_DIR}
    -DPLUS_Philips_MAJOR_VERSION:STRING=${PLUS_Philips_MAJOR_VERSION}
    -DPLUS_Philips_MINOR_VERSION:STRING=${PLUS_Philips_MINOR_VERSION}
    -DPLUS_Philips_PATCH_VERSION:STRING=${PLUS_Philips_PATCH_VERSION}
    -DPLUS_TEST_PHILIPS_3D_ULTRASOUND:BOOL=${PLUS_TEST_PHILIPS_3D_ULTRASOUND}
    )
  IF(PLUS_TEST_PHILIPS_3D_ULTRASOUND)
    LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
      -DPLUS_TEST_PHILIPS_3D_ULTRASOUND_IP_ADDRESS:STRING=${PLUS_TEST_PHILIPS_3D_ULTRASOUND_IP_ADDRESS}
      )
  ENDIF()
ENDIF()

IF(PLUS_USE_INFRARED_SEEK_CAM)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DSeekCameraLib_DIR:PATH=${PLUS_SeekCameraLib_DIR}
    )
ENDIF()

IF(PLUSBUILD_DOCUMENTATION)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DPLUS_DOCUMENTATION_SEARCH_SERVER_INDEXED=${PLUSBUILD_DOCUMENTATION_SEARCH_SERVER_INDEXED}
    -DDOXYGEN_DOT_EXECUTABLE:FILEPATH=${DOXYGEN_DOT_EXECUTABLE}
    -DDOXYGEN_EXECUTABLE:FILEPATH=${DOXYGEN_EXECUTABLE}
    )
ENDIF()

IF(PLUSBUILD_DOWNLOAD_PLUSLIBDATA AND NOT PLUSBUILD_OFFLINE_BUILD)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DPLUSLIB_DATA_DIR:PATH=${PLUSLIB_DATA_DIR}
    )
ENDIF()

IF(PLUSBUILD_BUILD_PLUSLIB_WIDGETS)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DQt5_DIR:PATH=${Qt5_DIR}
    -DPLUS_BUILD_WIDGETS:BOOL=${PLUSBUILD_BUILD_PLUSLIB_WIDGETS}
    )
ENDIF()

IF(BUILDNAME)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DBUILDNAME:STRING=${BUILDNAME}
    )
ENDIF(BUILDNAME)

IF(NOT DEFINED(PLUSLIB_GIT_REPOSITORY))
  SET(PLUSLIB_GIT_REPOSITORY "${GIT_PROTOCOL}://github.com/SalvoVirga/PlusLib.git" CACHE STRING "Set PlusLib desired git url")
ENDIF()
IF(NOT DEFINED(PLUSLIB_GIT_REVISION))
  SET(PLUSLIB_GIT_REVISION "feature/SIMPLE" CACHE STRING "Set PlusLib desired git hash (master means latest)")
ENDIF()

IF(UNIX AND NOT APPLE)
  LIST(APPEND PLUSBUILD_ADDITIONAL_SDK_ARGS
    -DPLUS_USE_V4L2:BOOL=${PLUS_USE_V4L2}
    )
ENDIF()
# --------------------------------------------------------------------------
# PlusLib
SET (PLUS_PLUSLIB_DIR ${CMAKE_BINARY_DIR}/PlusLib CACHE INTERNAL "Path to store PlusLib contents.")
SET (PLUSLIB_DIR ${CMAKE_BINARY_DIR}/PlusLib-bin CACHE PATH "The directory containing PlusLib binaries" FORCE)
ExternalProject_Add(PlusLib
  "${PLUSBUILD_EXTERNAL_PROJECT_CUSTOM_COMMANDS}"
  SOURCE_DIR "${PLUS_PLUSLIB_DIR}"
  BINARY_DIR "${PLUSLIB_DIR}"
  #--Download step--------------
  GIT_REPOSITORY ${PLUSLIB_GIT_REPOSITORY}
  GIT_TAG ${PLUSLIB_GIT_REVISION}
  #--Configure step-------------
  CMAKE_ARGS
    ${ep_common_args}
    -DGIT_EXECUTABLE:FILEPATH=${GIT_EXECUTABLE}
    -DGITCOMMAND:FILEPATH=${GITCOMMAND}
    -DCMAKE_MODULE_PATH:PATH=${CMAKE_MODULE_PATH}
    -DVTK_DIR:PATH=${PLUS_VTK_DIR}
    -DITK_DIR:PATH=${PLUS_ITK_DIR}
    -DBUILD_SHARED_LIBS:BOOL=${PLUSBUILD_BUILD_SHARED_LIBS}
    -DBUILD_TESTING:BOOL=${BUILD_TESTING}
    -DPLUS_OFFLINE_BUILD:BOOL=${PLUSBUILD_OFFLINE_BUILD}
    -DCMAKE_CXX_FLAGS:STRING=${ep_common_cxx_flags}
    -DCMAKE_C_FLAGS:STRING=${ep_common_c_flags}
    -DCMAKE_RUNTIME_OUTPUT_DIRECTORY:PATH=${CMAKE_RUNTIME_OUTPUT_DIRECTORY}
    -DCMAKE_LIBRARY_OUTPUT_DIRECTORY:PATH=${CMAKE_LIBRARY_OUTPUT_DIRECTORY}
    -DCMAKE_ARCHIVE_OUTPUT_DIRECTORY:PATH=${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}
    -DPLUS_USE_SLICER:BOOL=${PLUSBUILD_USE_3DSlicer}
    -DPLUS_USE_OpenIGTLink:BOOL=${PLUSBUILD_USE_OpenIGTLink}
    -DPLUS_USE_SIMPLE:BOOL=${PLUSBUILD_USE_SIMPLE}
    -DPLUSBUILD_BUILD_PlusLib_TOOLS:BOOL=${PLUSBUILD_BUILD_PlusLib_TOOLS}
    -DPLUS_USE_tesseract:BOOL=${PLUSBUILD_USE_Tesseract}
    -DPLUS_USE_OpenCV:BOOL=${PLUSBUILD_USE_OpenCV}
    -DPLUS_USE_aruco:BOOL=${PLUSBUILD_USE_aruco}
    -DPLUS_USE_ULTRASONIX_VIDEO:BOOL=${PLUS_USE_ULTRASONIX_VIDEO}
    -DPLUS_USE_BKPROFOCUS_VIDEO:BOOL=${PLUS_USE_BKPROFOCUS_VIDEO}
    -DPLUS_USE_BKPROFOCUS_CAMERALINK:BOOL=${PLUS_USE_BKPROFOCUS_CAMERALINK}
    -DPLUS_USE_ICCAPTURING_VIDEO:BOOL=${PLUS_USE_ICCAPTURING_VIDEO}
    -DPLUS_USE_CAPISTRANO_VIDEO:BOOL=${PLUS_USE_CAPISTRANO_VIDEO}
    -DPLUS_USE_WINPROBE_VIDEO:BOOL=${PLUS_USE_WINPROBE_VIDEO}
    -DPLUS_USE_INTERSON_VIDEO:BOOL=${PLUS_USE_INTERSON_VIDEO}
    -DPLUS_USE_INTERSONSDKCXX_VIDEO:BOOL=${PLUS_USE_INTERSONSDKCXX_VIDEO}
    -DPLUS_USE_TELEMED_VIDEO:BOOL=${PLUS_USE_TELEMED_VIDEO}
    -DPLUS_USE_THORLABS_VIDEO:BOOL=${PLUS_USE_THORLABS_VIDEO}
    -DPLUS_USE_VFW_VIDEO:BOOL=${PLUS_USE_VFW_VIDEO}
    -DPLUS_USE_EPIPHAN:BOOL=${PLUS_USE_EPIPHAN}
    -DPLUS_USE_NDI:BOOL=${PLUS_USE_NDI}
    -DPLUS_USE_NDI_CERTUS:BOOL=${PLUS_USE_NDI_CERTUS}
    -DPLUS_USE_MICRONTRACKER:BOOL=${PLUS_USE_MICRONTRACKER}
    -DPLUS_USE_INTELREALSENSE:BOOL=${PLUS_USE_INTELREALSENSE}
    -DPLUS_USE_OPTICAL_MARKER_TRACKER:BOOL=${PLUS_USE_OPTICAL_MARKER_TRACKER}
    -DPLUS_USE_OPTIMET_CONOPROBE:BOOL=${PLUS_USE_OPTIMET_CONOPROBE}
    -DPLUS_USE_OPTITRACK:BOOL=${PLUS_USE_OPTITRACK}
    -DPLUS_USE_IntuitiveDaVinci:BOOL=${PLUS_USE_IntuitiveDaVinci}
    -DPLUS_USE_BRACHY_TRACKER:BOOL=${PLUS_USE_BRACHY_TRACKER}
    -DPLUS_USE_USDIGITALENCODERS_TRACKER:BOOL=${PLUS_USE_USDIGITALENCODERS_TRACKER}
    -DPLUS_USE_Ascension3DG:BOOL=${PLUS_USE_Ascension3DG}
    -DPLUS_USE_Ascension3DGm:BOOL=${PLUS_USE_Ascension3DGm}
    -DPLUS_USE_PHIDGET_SPATIAL_TRACKER:BOOL=${PLUS_USE_PHIDGET_SPATIAL_TRACKER}
    -DPLUS_USE_3dConnexion_TRACKER:BOOL=${PLUS_USE_3dConnexion_TRACKER}
    -DPLUS_USE_MMF_VIDEO:BOOL=${PLUS_USE_MMF_VIDEO}
    -DPLUS_USE_STEALTHLINK:BOOL=${PLUS_USE_STEALTHLINK}
    -DPLUS_USE_PHILIPS_3D_ULTRASOUND:BOOL=${PLUS_USE_PHILIPS_3D_ULTRASOUND}
    -DBUILD_DOCUMENTATION:BOOL=${PLUSBUILD_DOCUMENTATION}
    -DPLUS_TEST_HIGH_ACCURACY_TIMING:BOOL=${PLUS_TEST_HIGH_ACCURACY_TIMING}
    -DPLUS_USE_OvrvisionPro:BOOL=${PLUS_USE_OvrvisionPro}
    -DPLUS_TEST_OvrvisionPro:BOOL=${PLUS_TEST_OvrvisionPro}
    -DPLUS_USE_AGILENT:BOOL=${PLUS_USE_AGILENT}
    -DPLUS_USE_OpenCV_VIDEO:BOOL=${PLUS_USE_OpenCV_VIDEO}
    -DPLUS_USE_OPENHAPTICS:BOOL=${PLUS_USE_OPENHAPTICS}
    -DPLUS_USE_INFRARED_SEEK_CAM:BOOL=${PLUS_USE_INFRARED_SEEK_CAM}
    ${PLUSBUILD_ADDITIONAL_SDK_ARGS}
  LIST_SEPARATOR "|"
  #--Build step-----------------
  BUILD_ALWAYS 1
  #--Install step-----------------
  INSTALL_COMMAND ""
  DEPENDS ${PlusLib_DEPENDENCIES}
)
