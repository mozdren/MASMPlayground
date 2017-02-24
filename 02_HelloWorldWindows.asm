.386
.model flat, stdcall
option casemap :none

include d:\masm32\include\windows.inc
include d:\masm32\include\kernel32.inc
include d:\masm32\include\user32.inc

includelib d:\masm32\lib\kernel32.lib
includelib d:\masm32\lib\user32.lib

.data
    HelloWorld db "Hello, World", 0

.code
start:
    invoke MessageBox, NULL, addr HelloWorld, addr HelloWorld, MB_OK
    invoke ExitProcess, 0
end start
