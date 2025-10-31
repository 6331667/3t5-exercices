$ProgressPreference = 'SilentlyContinue'
Invoke-WebRequest -Uri " https://download.sysinternals.com/files/SysinternalsSuite.zip" -OutFile "C:\Users\6331667\Desktop"
Expand-Archive -Path "$HOME\Desktop\SysinternalsSuite.zip" -DestinationPath "$HOME\Desktop\Outils"