@echo off
echo> README.txt only for ios 17.4 and 17.4.1 (not beta) and you need python 3.12 or later (you need python to run the EUEnabler ) and you need git (you need git for the installer)
start README.txt
echo press_enter_if_you_have_git_and_python
pause
color 1
md vbs_installer_files
cd vbs_installer_files
echo> 1.vbs x=msgbox("creating files",0+64,"create")
echo> 2.vbs x=msgbox("done",0+64," ")
color 10
echo if_you_ready_press_enter
pause
start 1.vbs
cd..
git clone https://github.com/Lrdsnow/EUEnabler
cd vbs_installer_files
start 2.vbs
