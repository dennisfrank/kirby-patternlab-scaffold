#!/bin/sh

echo "\n\nSetup Pattern Lab"
echo "=================\n"

# Clone Pattern Lab Scaffold
git clone https://github.com/dennisfrank/patternlab-scaffolding.git patternlab && \

# Initialize Pattern Lab Scaffold
cd patternlab/ && \
sh init        && \
cd ..          && \

# Remove no longer needed project Git repository
rm -rf .git/       && \
rm -rf .gitmodules && \


echo "\n\nSetup Kirby"
echo "===========\n"

# Get Kirby Plainkit
git clone https://github.com/getkirby/plainkit.git kirby    && \

# Delete no longer needed Kirby Git files and directories
rm kirby/.gitmodules && \
rm -rf kirby/.git    && \
rm -rf kirby/kirby   && \
rm -rf kirby/panel   && \

# Create a fresh Git repository
git init

# Add Kirby components as Git submodules
git submodule add https://github.com/getkirby/kirby.git kirby/kirby && \
git submodule add https://github.com/getkirby/kirby.git kirby/panel && \

# Get Git submodule(s)
git submodule update --init --recursive &&\

echo "\n\nDONE!"
echo "=====\n"
