REM ml /c /Zd /coff 01_HelloWorld.asm
REM Link /SUBSYSTEM:CONSOLE 01_HelloWorld.obj

ml /c /Zd /coff 02_HelloWorldWindows.asm
Link /SUBSYSTEM:WINDOWS 02_HelloWorldWindows.obj

pause