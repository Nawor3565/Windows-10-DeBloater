pushd %~dp0
registrychanges.reg
AllowPowerShellScripts.reg
PowerShell ".\RemoveBuiltInPrograms.ps1"
PowerShell ".\DisableTelemetryServices.ps1"
DisallowPowerShellScripts.reg
FinishedMessage.vbs