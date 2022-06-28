@echo off
echo Creating patch from the latest commit
cd ..
set cnt=2
for %%A in ('dir /b patches\source') do set /a cnt+=1
git format-patch --start-number %cnt% -o patches/source -1 HEAD
echo.
echo done.
pause