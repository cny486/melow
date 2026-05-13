@echo off

for /f "tokens=1-3 delims=/ " %%a in ("%date%") do (
    set d=%%a-%%b-%%c
)

for /f "tokens=1-2 delims=: " %%a in ("%time%") do (
    set t=%%a-%%b
)

git add .
git commit -m "note update %d% %t%"
git push

pause