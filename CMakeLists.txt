cmake_minimum_required(VERSION 3.30)
project(grog-resources)

file(GLOB_RECURSE grog_libraries "Libraries/*/*.*")
file(GLOB_RECURSE grog_nodes "Nodes/*/*.*")

file(ARCHIVE_CREATE
    OUTPUT "pack.zip"
    PATHS ${grog_nodes} ${grog_libraries}
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    FORMAT "zip"
    VERBOSE)