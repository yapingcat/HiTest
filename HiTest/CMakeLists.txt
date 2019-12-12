project(Hitest)
aux_source_directory(./src SOURCE_FILE)
add_library(${PROJECT_NAME} STATIC ${SOURCE_FILE})
