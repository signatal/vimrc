#!/bin/bash

echo "+ Running ctags to create tags file"
ctags -R --languages=C,C++ --c++-kinds=+p --fields=+iaS --extra=+q ${PWD}

echo "~ Moving tags into vim directory"
mv tags ${HOME}/.vim/tags/generated-tags 
