cmake_minimum_required (VERSION 2.8)

project(PhotonMapping)

aux_source_directory(. DIR_SRCS)
add_definitions(-std=c++11)

FIND_PACKAGE (OpenMP REQUIRED)
if (OPENMP_FOUND)
	message ("OPENMP FOUND")
	set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}")
	set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
	set (CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${OpenMP_EXE_LINKER_FLAGS}")
endif ()

find_package(OpenCV REQUIRED)
find_package (Eigen3 3.3 REQUIRED NO_MODULE)

add_executable(PhotonMapping ${DIR_SRCS})
target_link_libraries (${PROJECT_NAME} Eigen3::Eigen)
target_link_libraries(${PROJECT_NAME} ${OpenCV_LIBS})
