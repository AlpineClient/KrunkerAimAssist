#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance FORCE 
;OPTIMIZATIONS START
#MaxHotkeysPerInterval 920000000
#HotkeyInterval 920000000
#KeyHistory 0
ListLines Off
Process, Priority, , A
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
;OPTIMIZATIONS END

CoordMode, Mouse, Screen 
CoordMode, Pixel, Screen 
MidX := A_ScreenWidth / 2 
MidY := A_ScreenHeight / 2 
Triggerbot = 0 
Sense = 2
MX := A_ScreenWidth / 16
MY := A_ScreenHeight / 9
FirstPairX := (MidX - MX)
FirstPairY := (MidY - MX)
SecondPairX := (MidX + MY)
SecondPairY := (MidY + MY)
aimcolor = 0x5064FB

; Create the OSD for the hack: 


Gui, OSD:Show, x0 y0 NoActivate 

Msgbox, CREATED BY DaYEEzy
Msgbox, Simple Bug Fix This Time 1.1.2
Msgbox,
(
List of Updates:
-1.1.2: Small Bug Fix
-1.1.1: Frozen Glitch Fixed
-1.0.1(Never Released): Tryed Fixing Frozen Glitch
-1.0.0: Offical Release
)
Msgbox, More Versions coming out soon.
Msgbox, Subscribe to DaYEEzy first then press ok
Msgbox, 

(
INSTRUCTIONS: 
Use the Right Mouse Button to activate AimAssist. 
Watch the Video for help and make sure to Subscribe and Like. 
Then Open the Client and use your aimassist.
)
Msgbox, To disable AimAssist, press the `` button (next to the 1 key)


TrayTip, Krunker Aimbot, Aimbot has started!, 5, 33



~RButton::
{
	While GetKeyState("RButton"){
PixelSearch, TargetX, TargetY, FirstPairX, FirstPairY, SecondPairX, SecondPairY, %aimcolor%, 30, Fast
If ErrorLevel = 0 
{ 
TargetX := TargetX + 42
TargetY := TargetY + 30
MoveX := ((TargetX - MidX) / sense) 
MoveY := ((TargetY - MidY) / sense) 
MouseMove, MoveX, MoveY,, R 
if (TriggerBot = 1) 
Click 
}
}
}
return

`::
TrayTip, Krunker Aimbot, Aimbot deactivated!, 5, 33
exitapp