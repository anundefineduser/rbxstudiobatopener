@echo off
title Roblox Studio Batch Opener
echo Opening Roblox Studio.
FOR /F %%G in ('dir "C:\Users\%username%\AppData\Local\Roblox\Versions" /b /d') DO (
	if exist "C:\Users\%username%\AppData\Local\Roblox\Versions\%%G\RobloxStudioLauncherBeta.exe" (
		"C:\Users\%username%\AppData\Local\Roblox\Versions\%%G\RobloxStudioLauncherBeta.exe"
		goto breakloop
	)
)

:breakloop
cd "C:\Users\%username%\Desktop"
echo Deleting desktop shortcuts.
if exist "Roblox Player.lnk" (
	echo Deleting Roblox Player shortcut.
	del "Roblox Player.lnk"
)
if exist "Roblox Studio.lnk" (
	echo Deleting Roblox Studio shortcut.
	del "Roblox Studio.lnk"
)