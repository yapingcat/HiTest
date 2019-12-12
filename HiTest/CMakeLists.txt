project(Hitest)
aux_source_directory(. Sourcefile)
add_library(${PROJECT_NAME} STATIC ${Sourcefile})