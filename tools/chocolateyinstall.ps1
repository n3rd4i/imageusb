$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.osforensics.com/downloads/imageusb.zip'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = 'F29ADCE77D18FF0EE69483CD43A724874E161A27841D175D5978C72B8FC4F5A8'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
