project(Test)

include_directories(../HiTest/include)

aux_source_directory(. SOURCE_FILE)

add_executable(${PROJECT_NAME} ${SOURCE_FILE})
