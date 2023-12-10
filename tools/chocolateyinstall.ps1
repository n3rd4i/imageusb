$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = 'https://www.osforensics.com/downloads/imageusb.zip'
  checksum      = 'b6f83468e227dcf869d7c70dbf1b9547d40df45dcf0909186ff447738866611f'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
