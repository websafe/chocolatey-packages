$ErrorActionPreference = 'Stop';
$packageName = 'hubiC'
$registryUninstallerKeyName = '{51fea8cc-5bb6-4312-86f5-1802a10e030d}'
$installerType = 'exe'
$url = 'http://mir7.ovh.net/ovh-applications/hubic/hubiC/2.1.1/hubiC-2.1.1.145-windows.exe'
$silentArgs = '/S /norestart'
$validExitCodes = @(0,3010)
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes

