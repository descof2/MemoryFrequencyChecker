@ECHO OFF
setlocal enableextensions EnableDelayedExpansion

for /f "skip=1 tokens=1" %%i in ('wmic MEMORYCHIP get Speed ^| findstr [0-9]') do (
	set /a j = %%i
	if NOT !j! == 3200 start wmplayer "C:\Windows\Media\Alarm02.wav" 
) 

endlocal

