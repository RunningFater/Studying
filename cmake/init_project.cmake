set(STUDY_ALL_CMAKES)
message("PROJECT_SOURCE_DIR is ${PROJECT_SOURCE_DIR} and CMAKE_CURRENT_SOURCE_DIR is ${CMAKE_CURRENT_SOURCE_DIR}")
file(GLOB_RECURSE STUDY_ALL_CMAKES RELATIVE ${PROJECT_SOURCE_DIR}/ ${CMAKE_CURRENT_SOURCE_DIR}/CMakeLists.txt)
message(STATUS "STUDY_ALL_CMAKES is ${STUDY_ALL_CMAKES}")