$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = 'https://www.osforensics.com/downloads/imageusb.zip'
  checksum      = 'fdca8d537b091ab5bb0434cb36075191bbfbb7800f941b3816e22977a353e2cb'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
