start "" /b .\cmake-build\posix_demo.exe

C:\Windows\System32\timeout.exe /t 20 &&^
C:\Windows\System32\taskkill /f /im posix_demo.exe
