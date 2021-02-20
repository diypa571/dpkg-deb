#!/bin/sh
# @Author : Diyar Parwana
# @Script GitManager - LINUX/UNIX:

git init
git remote add origin $1
git add .
git commit -m "Comments"
git push origin master

