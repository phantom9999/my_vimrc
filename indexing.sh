#!/bin/sh
find . -name "*.h" -o -name "*.c" -o -name "*.cc" -o -name "*.hpp" -o -name "*.cpp" > cscope.files
cscope -bq -i cscope.files
ctags -R
