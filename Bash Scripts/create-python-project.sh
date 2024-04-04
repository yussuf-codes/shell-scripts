#!/bin/bash
mkdir ./$1/ &&
cd ./$1/ &&
touch ./main.py &&
python3 -m venv ./.venv/ &&
curl https://raw.githubusercontent.com/github/gitignore/main/Python.gitignore -o ./.gitignore -s &&
git init &&
git add . &&
git commit -m "Initializing project" &&
source ./.venv/bin/activate &&
code .
