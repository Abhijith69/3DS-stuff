@echo off
mode con cols=50 lines=23
title Win8 UAC Switcher
:Menu
Cls
@ ECHO.
@ ECHO. 1 = �}�ҨϥΪ̱b�ᱱ��
@ ECHO. 2 = �����ϥΪ̱b�ᱱ��
@ ECHO.
set /p choice=      �п�J�������Ʀr�ë� [Enter] ����G
If /I "%Choice%"=="1" Goto open
If /I "%Choice%"=="2" Goto close
@ ECHO.
ECHO �@�@�@��ܵL�ġA�Э��s��J�C
ping -n 2 127.1>nul 
goto menu

:open
@ ECHO.
ECHO �@�@�@���b�}�ҨϥΪ̱b�ᱱ��K
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 1 /f>NUL 2>NUL
goto finish

:close
@ ECHO.
ECHO �@�@�@���b�����ϥΪ̱b�ᱱ��K
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f>NUL 2>NUL
goto finish

:finish
@ ECHO.
ping -n 2 127.1>nul 
ECHO �@�@�@�]�w���\�I�аO�o���s�}���C
ping -n 2 127.1>nul
exit
REM matif