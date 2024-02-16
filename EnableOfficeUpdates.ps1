# PowerShell script to enable automatic MS Office updates

$RegPath  = "HKLM:\SOFTWARE\Microsoft\Office\ClickToRun\Configuration"
$RegName  = "UpdatesEnabled"
$RegValue = "True"
$RegType  = "String"

if (Test-Path $RegPath) {
    Set-ItemProperty -Path $RegPath -Name $RegName -Value $RegValue -Type $RegType -Force | Out-Null
    Write-Host "Automatic MS Office updates enabled!"
} else {
    Write-Host "Registry path not found: $RegPath"
}
