# Atom Profile Backup (Windows)
# Author: Jens Ackou

#apm list --installed --bare > ~/.atom/package.list
#cp ~/.atom/*.list ~/.atom/*.coffee ~/.atom/*.less ~/.atom/*.cson profile/


$sourcePath = "$PSScriptRoot\profile"
$destPath = "$PSScriptRoot\test"
echo $sourcePath
echo $destPath

Get-ChildItem $sourcePath '*.cson' | Foreach-Object ` {
    $destDir = Split-Path ($_.FullName -Replace [regex]::Escape($sourcePath), $destPath)
    if (!(Test-Path $destPath))
    {
        New-Item -ItemType directory $destPath | Out-Null
    }
    Copy-Item $_ -Destination $destPath
}

echo $destDir
