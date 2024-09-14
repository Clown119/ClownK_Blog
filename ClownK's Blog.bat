@echo off
@title ClownK's Blog PUSH BAT
@color a
F:
cd F:\Blog_Hexo\ClownK's Blog
echo The current directory is: %cd%
echo;
echo Add Changes
git add .
echo;
set /p declation=Please input commit message:
git commit -m "%declation%"
echo;
git branch -M main
echo;
git push -u origin main
pause