@echo off
color a
title Arvamismäng
set /a guessnum=0
set /a answer=%RANDOM%
set variable1=surf33
echo -------------------------------------------------
echo Arvamismang! 
echo. 
echo Proovi leida sobiv arv! 
echo -------------------------------------------------
echo. 
:top
echo. 
set /p guess=
echo. 
if %guess% GTR %answer% ECHO Madalam! 
if %guess% LSS %answer% ECHO Suurem! 
if %guess%==%answer% GOTO EQUAL
set /a guessnum=%guessnum% +1
if %guess%==%variable1% ECHO Leidsid tagaukse?, vastus on: %answer%
goto top
:equal
echo Juhhuu, sa leidsid sobiva arvu!!! 
echo. 
echo Sul kulus %guessnum% arvamist. 
echo. 
pause