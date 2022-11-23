# minimal_vcpkg_example

Learning resources for vcpkg:
- [CPPCON 2022 Video By Vcpkg Developer](https://www.youtube.com/watch?v=rrcngYMAJ-w)
- [vcpkg FAQ](https://vcpkg.io/en/docs/about/faq.html)
- [vcpkg repo](https://github.com/Microsoft/vcpkg)

## Build Instructions

```bash
cmake -S . -B build/
cmake --build build/
```

## Things to notice

When you have finished building. Delete the build directory. Then try rebuilding.

Notice the [binary caching](https://github.com/microsoft/vcpkg/blob/master/docs/users/binarycaching.md)!

```
Restored 4 package(s) from /home/user/.cache/vcpkg/archives in 138.8 ms. Use --debug to see more details.
```

Also notice how we don't have to use the upstream ports. We can maintain our own if we choose.

See the `ports/` directory.

## non-standard things I did

vcpkg docs recommend using a git-submodule to grab vcpkg. I use fetchcontent.

vcpkg docs recommend using a CMAKE_TOOLCHAIN_FILE. I just treated it as a regular CMake module.

## dependencies

By default vcpkg comes with a bunch of default packages listed in it's own ports directory:
- https://github.com/microsoft/vcpkg/tree/master/ports

You can use the website to see the packages they offer:
- https://vcpkg.io/en/packages.html

To add a non-existing dependency you can either upstream a port or make a custom port.
In this example I made a custom port for `Vulkan-Headers`. See docs for more info.
