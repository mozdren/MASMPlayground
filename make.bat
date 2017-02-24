REM ml /c /Zd /coff 01_HelloWorld.asm
REM Link /SUBSYSTEM:CONSOLE 01_HelloWorld.obj

REM ml /c /Zd /coff 02_HelloWorldWindows.asm
REM Link /SUBSYSTEM:WINDOWS 02_HelloWorldWindows.obj

ml /c /Zd /coff 03_SampleInstructionsUse.asm
Link /SUBSYSTEM:WINDOWS 03_SampleInstructionsUse.obj

pause