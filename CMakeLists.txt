cmake_minimum_required(VERSION 3.14)
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

project(VVL LANGUAGES CXX C)

include(FetchContent)
FetchContent_Declare(vcpkg
    GIT_REPOSITORY https://github.com/microsoft/vcpkg.git
    GIT_TAG 2022.11.14
)
FetchContent_MakeAvailable(vcpkg)

set(VCPKG_INSTALL_OPTIONS "--no-print-usage")
set(VCPKG_OVERLAY_PORTS "${CMAKE_CURRENT_SOURCE_DIR}/ports")
include("${vcpkg_SOURCE_DIR}/scripts/buildsystems/vcpkg.cmake")

add_executable(foobar)
target_sources(foobar PRIVATE main.cpp)

find_package(VulkanHeaders CONFIG REQUIRED)
target_link_libraries(foobar PRIVATE Vulkan::Headers)

find_package(GTest CONFIG REQUIRED)
target_link_libraries(foobar PRIVATE GTest::gmock GTest::gtest GTest::gmock_main GTest::gtest_main)
