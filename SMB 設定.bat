@echo off
mode con cols=50 lines=23
title SMB Switcher
:Menu
Cls
@ ECHO.
@ ECHO. 1 = �}�� SMB
@ ECHO. 2 = ���� SMB
@ ECHO.
set /p choice= �п�J�������Ʀr�ë� [Enter] ����G
If /I "%Choice%"=="1" Goto open
If /I "%Choice%"=="2" Goto close
@ ECHO.
ECHO ��ܵL�ġA�Э��s��J�C
ping -n 2 127.1>nul 
goto menu

:open
@ ECHO.
ECHO ���b�}�� SMB�K
reg ADD HKLM\SYSTEM\CurrentControlSet\Control\Lsa /v LmCompatibilityLevel /t REG_DWORD /d 1 /f
goto finish

:close
@ ECHO.
ECHO ���b���� SMB�K
reg DELETE HKLM\SYSTEM\CurrentControlSet\Control\Lsa /v LmCompatibilityLevel /f
goto finish

:finish
@ ECHO.
ping -n 2 127.1>nul 
ECHO �@�@�@�]�w���\�I
ping -n 2 127.1>nul
exit
REM matif