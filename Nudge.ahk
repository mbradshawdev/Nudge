#SingleInstance Force
;----------------------------------------------------------------------
;======================================================================
;			  Nudge!
;Nudge the top-most window 1 or 10 pixels in some direction
;With [ALT] + [CTRL] + [Arrow Keys] for 10px, add [SHIFT] for 1px nudge
;----------------------------------------------------------------------
;======================================================================
#SingleInstance Force
;----------------------------------------------------------------------
;======================================================================
;			MAIN PROGRAM
;----------------------------------------------------------------------
Loop
 IfWinNotActive Launchy		;Ensure Launchy is closed
   break			;Usually not a problem

Loop, 500
{
 ToolTip Hold [Ctrl]+[Alt] and press [Arrow Keys] to nudge active window ^ v < >`nHold [Shift] as well for a tiny nudge`nHave fun!
 Sleep 10
}
ToolTip
 
Return

;----------------------------------------------------------------------
;======================================================================
;			HOTKEYS
;----------------------------------------------------------------------
; ToolTip OldX: %OldX%`,OldY: %OldY%`nNewX: %NewX%`,NewY: %NewY%

^!Left::            ;[Ctrl]+[Alt]+[<] for LEFT
 WinGetPos, oldX, oldY, , ,A
 newX := oldX - 10
 WinMove, A,,newX, oldY
Return
;----------------------------------------------------------------------
^!Right::           ;[Ctrl]+[Alt]+[>] for RIGHT
 WinGetPos, oldX, oldY, , ,A
 newX := oldX + 10
 WinMove, A,,newX, oldY
Return
;----------------------------------------------------------------------
^!Up::              ;[Ctrl]+[Alt]+[^] for UP
 WinGetPos, oldX, oldY, , ,A
 newY := oldY - 10
 WinMove, A,,oldX, newY
Return
;----------------------------------------------------------------------
^!Down::            ;[Ctrl]+[Alt]+[v] for DOWN
 WinGetPos, oldX, oldY, , ,A
 newY := oldY + 10
 WinMove, A,,oldX, newY
Return
;----------------------------------------------------------------------
^!+Right::      ;[Ctrl]+[Alt]+[Shift]+[>] for TINY RIGHT
 WinGetPos, oldX, oldY, , ,A
 newX := oldX + 1
 WinMove, A,,newX, oldY
Return
;----------------------------------------------------------------------
^!+Left::       ;[Ctrl]+[Alt]+[Shift]+[<] for TINY LEFT
 WinGetPos, oldX, oldY, , ,A
 newX := oldX - 1
 WinMove, A,,newX, oldY
Return
;----------------------------------------------------------------------
^!+Up::         ;[Ctrl]+[Alt]+[Shift]+[^] for TINY UP
 WinGetPos, oldX, oldY, , ,A
 newY := oldY - 1
 WinMove, A,,oldX, newY
Return
;----------------------------------------------------------------------
^!+Down::       ;[Ctrl]+[Alt]+[Shift]+[v] for TINY DOWN
 WinGetPos, oldX, oldY, , ,A
 newY := oldY + 1
 WinMove, A,,oldX, newY
Return
;----------------------------------------------------------------------
ESC::
 Loop 200
 {
  ToolTip Quitting Nudge! on %mpcTitle%`nBYE!
  Sleep 10
 }
 ExitApp
Return