$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.osforensics.com/downloads/imageusb.v1.4.1003.zip'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = 'EE966CFAF59006FDB6CB8B1ECF4A0BC4D3FF5701820AE09D5D436109E927DFCB'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
