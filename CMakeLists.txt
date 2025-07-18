cmake_minimum_required(VERSION 3.30)
project(grog-resources)

file(GLOB grog_nodes "Nodes/*/*.*")

file(ARCHIVE_CREATE
    OUTPUT "pack.zip"
    PATHS ${grog_nodes}
    FORMAT "zip")