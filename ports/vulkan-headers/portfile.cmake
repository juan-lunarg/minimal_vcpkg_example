# header-only library
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO KhronosGroup/Vulkan-Headers
    REF b7a86d3b2bf8fbe73fcd40df9ec62a5966e9db89
    SHA512 377ada7a9721c225067c6548475109cf4ad1f3d677b835fbe7a4bc7520621acd816cc59d4b75b23bc28f25891b556792cf853b98c0dfb915856774ff27eb6aba
    HEAD_REF v1.3.235
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()
