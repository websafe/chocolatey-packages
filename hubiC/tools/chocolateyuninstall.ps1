$ErrorActionPreference = 'Stop';
$packageName = 'hubiC'
$registryUninstallerKeyName = '{51fea8cc-5bb6-4312-86f5-1802a10e030d}'
$installerType = 'exe'
$silentArgs = '/S /norestart'
$validExitCodes = @(0,3010)

$osBitness = Get-ProcessorBits
 
if ($osBitness -eq 64) {
  $file = (Get-ItemProperty -Path "hklm:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$registryUninstallerKeyName").UninstallString
} else {
  $file = (Get-ItemProperty -Path "hklm:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$registryUninstallerKeyName").UninstallString
} 
	
Uninstall-ChocolateyPackage -PackageName $packageName -FileType $installerType -SilentArgs $silentArgs -validExitCodes $validExitCodes -File $file

