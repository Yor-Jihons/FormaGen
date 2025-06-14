@echo off

set PRODUCT=FormaGen
set CSDEBUGEXE=.\bin\Debug\net8.0\%PRODUCT%.exe
set CSRELEASEEXE=.\bin\Release\net8.0\%PRODUCT%.exe
set CSPUBLISHEXE=.\bin\Publish\%PRODUCT%.exe

if "%1" == "debug" (
    call :RunDebug
) else (
    if "%1" == "release" (
        call :RunRelease
    ) else (
        if "%1" == "publish" (
            call :RunPublish
        ) else (
            echo Wrong commandline arguments for compile.bat
            echo Restart compile.bat
        )
    )
)
exit /b

rem ------------------------- 関数定義 -------------------------

:RunDebug
    %CSDEBUGEXE% -v
exit /b 0

:RunRelease
    %CSRELEASEEXE% --htmlfilepath="abc.html"
exit /b 0

:RunPublish
    %CSPUBLISHEXE% --htmlfilepath="abc.html"
exit /b 0