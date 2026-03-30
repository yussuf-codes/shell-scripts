#!/bin/bash

mkdir ./$1/ &&
cd ./$1/ &&
python3 -m venv ./.venv/ &&
touch ./README.md &&
mkdir ./src &&
touch ./src/main.py &&
curl https://raw.githubusercontent.com/github/gitignore/main/Python.gitignore -o ./.gitignore -s &&
git init &&
git add . &&
git commit -m "Initial commit" &&
source ./.venv/bin/activate
