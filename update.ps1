import-module au

$domain   = 'https://www.osforensics.com'
$releases = "$domain/tools/write-usb-images.html"

function global:au_SearchReplace {
  @{
    ".\tools\chocolateyInstall.ps1" = @{
      "(?i)(^\s*url\s*=\s*)('.*')"          = "`$1'$($Latest.URL32)'"
      "(?i)(^\s*checksum\s*=\s*)('.*')"   	= "`$1'$($Latest.Checksum32)'"
    }
  }
}

function global:au_GetLatest {
  $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing #1
  $regex   = '<p>The current version of ImageUSB is v(\d+.\d+.\d+).*.<\/p>'
  $ver_raw = $download_page.Content -match $regex
  if ($ver_raw) { $ver_raw = $matches[1] }
  $url = 'https://www.osforensics.com/downloads/imageusb.zip'

  $version = $ver_raw
  return @{ Version = $version; URL32 = $url }
}

update -ChecksumFor 32
