cmake_minimum_required(VERSION 3.4.1)

if(USEASAN)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fsanitize=address -fno-omit-frame-pointer")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=address -fno-omit-frame-pointer")
set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} -fsanitize=address")
set(CMAKE_STATIC_LINKER_FLAGS "${CMAKE_STATIC_LINKER_FLAGS} -fsanitize=address")
endif(USEASAN)

add_library( native-lib SHARED src/main/cpp/native-lib.cpp )

find_library( log-lib log )

target_link_libraries( native-lib ${log-lib} )