#!/bin/bash

set -ex

cmake -E make_directory $dest

# Directories:
cmake -E copy_directory src $dest/src
cmake -E copy_directory cmake $dest/cmake
cmake -E copy_directory examples $dest/examples
# Files:
cmake -E copy CMakeLists.txt README.md LICENSE version $dest

cmake -E make_directory dist
cmake -E tar cfz dist/$dest.tar.gz $dest
cmake -E remove_directory $dest