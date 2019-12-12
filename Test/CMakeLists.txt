project(Test)

include_directories(../HiTest/src)

aux_source_directory(. SOURCE_FILE)


add_executable(${PROJECT_NAME} ${SOURCE_FILE})
message(${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(${PROJECT_NAME} ${CMAKE_CURRENT_SOURCE_DIR}/../build/HiTest/libHitest.a)
