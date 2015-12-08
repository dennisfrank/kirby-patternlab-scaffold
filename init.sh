#!/bin/sh

echo "\n\nSetup Pattern Lab"
echo "=================\n"

# Clone Pattern Lab Scaffold
git clone https://github.com/dennisfrank/patternlab-scaffolding.git patternlab && \

# Initialize Pattern Lab Scaffold
cd patternlab/                                               && \
sh init                                                      && \
cd ..                                                        && \



echo "\n\nSetup Kirby"
echo "===========\n"

git clone https://github.com/getkirby/plainkit.git kirby    && \

# Delete no longer needed Kirby Git files and directories
rm kirby/.gitmodules                                        && \
rm -rf kirby/.git                                           && \

# Delete Kirby’s empty kirby and panel directories
# rm -rf kirby/kirby                                          && \
# rm -rf kirby/panel

# Get Git submodule(s)
git submodule update --init --recursive
