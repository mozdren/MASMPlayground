.386
.model flat, stdcall
option casemap :none

include d:\masm32\include\windows.inc
include d:\masm32\include\kernel32.inc
include d:\masm32\include\masm32.inc

includelib d:\masm32\lib\kernel32.lib
includelib d:\masm32\lib\masm32.lib

.data
    HelloWorld db "Hello, World", 0

.code
start:
    invoke StdOut, addr HelloWorld
    invoke ExitProcess, 0
end start
