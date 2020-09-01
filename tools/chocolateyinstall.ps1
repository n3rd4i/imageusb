$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.osforensics.com/downloads/imageusb.zip'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = 'EC9BCFBC7255010EE80938FCAA9BC28F249515076A9CB36D700F7D3C9318CA31'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
