#!/usr/bin/env bash

lua_file="init.lua"
vim_file="init.vim"

if [[ -f "$lua_file" ]]; then
    mv "$lua_file" "$lua_file.no" && mv "$vim_file.no" "$vim_file" && echo "vim activated" || true
else
    mv "$lua_file.no" "$lua_file" && mv "$vim_file" "$vim_file.no" && echo "lua activated" || true
fi
