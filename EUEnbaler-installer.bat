@echo off
echo> README.txt only for ios 17.4 and 17.4.1 (not beta) and you need python 3.12 or later (you need python to run the EUEnabler and for the installer ) and you need git (you need git for the installer)
start README.txt
echo press_enter_if_you_have_git_and_python
pause
color 1
cd %appdata%
cd..
cd..
md vbs_installer_files
cd vbs_installer_files
echo> 1.vbs x=msgbox("creating files",0+64,"create")
echo> 2.vbs x=msgbox("create files is done",0+64," ")
color 17
echo if_you_ready_press_enter
pause
start 1.vbs
cd..
git clone https://github.com/Lrdsnow/EUEnabler
pip3 install pymobiledevice3
cd vbs_installer_files
start 2.vbs
color 07
:A
set /p asd=Do you want to run the EUEnbaler (Y/N) : "
if /i {%asd%}=={Y} (goto :yes)
if /i {%asd%}=={y} (goto :yes)
if /i {%asd%}=={N} (goto :no)
if /i {%asd%}=={n} (goto :no)
echo.
echo you want to run EUEnabler? (Y/N)
echo.
set /p pause="Press any key to continue "

:yes
cd EUEnbaler
start python app.py

:no
exit
