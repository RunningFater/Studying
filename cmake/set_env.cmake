message("============================== set env ===============================")

#����Ƿ�����CMake���������ͣ���δ����������ΪRelease
#RelWithDebInfo �������˱������Ż�ѡ�Ҳ�����˵��Է��š�Release with debug info��
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif(NOT CMAKE_BUILD_TYPE)
message(STATUS "SET CMAKE_BUILD_TYPE ${CMAKE_BUILD_TYPE}")

#1.���������ļ��ĸ�Ŀ¼
message(STATUS "======================================================================")
message(STATUS "=================== SET BUILD ROOT PATH STUDY_HOME ===================")
message(STATUS "======================================================================")
set(STUDY_HOME_PATH)

#�������Ƿ񱻶���
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

#2.���ð�װĿ¼
set(CMAKE_INSTALL_PREFIX ${STUDY_HOME_PATH})

#3.���õ�������Ŀ¼
message(STATUS "======================================================================")
message(STATUS "=================== SET THIRD DEPENDS LIBRARY PATH ===================")
message(STATUS "======================================================================")
set(STUDY_3RD_LIB_PATH ${STUDY_HOME_PATH}/lib)
message(STATUS "STUDY_3RD_LIB_PATH =================> ${STUDY_3RD_LIB_PATH}")

#4.����QtĿ¼

#5.�������Ŀ¼
message(STATUS "======================================================================")
message(STATUS "========================== SET OUTPUT PATH ===========================")
message(STATUS "======================================================================")
#ָ����̬�������Ŀ¼
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${STUDY_HOME_PATH}/bin)
#ָ����ִ���ļ�������Ŀ¼
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${STUDY_HOME_PATH}/bin)
message(STATUS "CMAKE_LIBRARY_OUTPUT_DIRECTORY ====================> ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}")
message(STATUS "CMAKE_RUNTIME_OUTPUT_DIRECTORY ====================> ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}")