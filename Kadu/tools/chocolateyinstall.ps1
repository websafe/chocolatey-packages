$ErrorActionPreference = 'Stop';
$packageName = 'Kadu'
$registryUninstallerKeyName = 'Kadu'
$installerType = 'exe'
$url = 'http://download.kadu.im/stable/windows/Kadu-2.1.exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes

