#!/bin/bash

git add .
git reset HEAD target 
git reset project/target 
git reset HEAD project/project/target 
git reset HEAD my-resources/files-audit.log 
git commit -m "phase 0 prime"

echo "Ready."
