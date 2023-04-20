# Cross Compiling Qt6
For the most part, the steps [here](https://wiki.qt.io/Cross-Compile_Qt_6_for_Raspberry_Pi)
can be followed. However, there are a few important differences:

## Modules
We don't need all the qt modules, so run `init_command.sh`
in order to init just the qt dependencies that the wombat has.

## Symlinks
The symlinks do not work regularly by just doing symlinks
as it says on the tutorial. Instead, you will have to
run `fix-symlinks.sh`

## Pi Configuration
In order to configure the pi build, don't use the configure
script inside the qt directory. Instead, use the
`configure-pi.sh` script provided.

## Toolchain
When cross compiling with gcc and g++, linking may not go
as planned and you may end up with errors due to mismatched
libc and libstdc++ when dlopen is called. For this reason,
clang is recommended. Thus, use the provided toolchain.cmake
in order to use clang instead of the one on the website (for
gcc/g++)
