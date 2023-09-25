message("============================== set env ===============================")

#检查是否设置CMake的生成类型，若未设置则设置为Release
#RelWithDebInfo 既启用了编译器优化选项，也保留了调试符号“Release with debug info”
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif(NOT CMAKE_BUILD_TYPE)
message(STATUS "SET CMAKE_BUILD_TYPE ${CMAKE_BUILD_TYPE}")

#1.设置生成文件的根目录
message(STATUS "======================================================================")
message(STATUS "=================== SET BUILD ROOT PATH STUDY_HOME ===================")
message(STATUS "======================================================================")
set(STUDY_HOME_PATH)

#检查变量是否被定义
if(DEFINED ENV{STUDY_HOME})
    message(STATUS "ENV: ${STUDY_HOME}")
    set(STUDY_HOME_PATH $ENV{STUDY_HOME})
else()
    if(CMAKE_SYSTEM_NAME MATCHES "Linux")
        message(STATUS "CMAKE_SYSTEM_NAME ====================> Linux")
        set(STUDY_HOME_PATH /opt/STUDY_HOME)
    elseif(CMAKE_SYSTEM_NAME MATCHES "Windows")
        message(STATUS "CMAKE_SYSTEM_NAME ====================> Windows")
        set(STUDY_HOME_PATH D:/Code/STUDY_HOME)
    endif()
endif()
message(STATUS "STUDY_HOME_PATH ====================> ${STUDY_HOME_PATH}")

#2.设置安装目录
set(CMAKE_INSTALL_PREFIX ${STUDY_HOME_PATH})

#3.设置第三方库目录
message(STATUS "======================================================================")
message(STATUS "=================== SET THIRD DEPENDS LIBRARY PATH ===================")
message(STATUS "======================================================================")
set(STUDY_3RD_LIB_PATH ${STUDY_HOME_PATH}/lib)
message(STATUS "STUDY_3RD_LIB_PATH =================> ${STUDY_3RD_LIB_PATH}")

#4.设置Qt目录

#5.设置输出目录
message(STATUS "======================================================================")
message(STATUS "========================== SET OUTPUT PATH ===========================")
message(STATUS "======================================================================")
#指定动态库的生成目录
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${STUDY_HOME_PATH}/bin)
#指定可执行文件的生成目录
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${STUDY_HOME_PATH}/bin)
message(STATUS "CMAKE_LIBRARY_OUTPUT_DIRECTORY ====================> ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}")
message(STATUS "CMAKE_RUNTIME_OUTPUT_DIRECTORY ====================> ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}")