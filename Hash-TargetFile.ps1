# This cannot hash PDF files
$fullPath = "$args"

Add-Type -AssemblyName PresentationFramework
$result = [System.Windows.MessageBox]::Show("Do you wish to hash $fullPath", "Hash target file", "YesNo")

if ($result -eq "Yes") {
    $fileHash = Get-FileHash -Path $fullPath -Algorithm SHA256
}

$fileName = Get-ChildItem $fullPath | Select-Object -ExpandProperty BaseName
$dir = Get-ChildItem $fullPath | Select-Object -ExpandProperty Directory

$outputString = $fileHash.Algorithm + "`n" + $fileHash.Hash 
$outputString | Set-Content $dir\hash_$fileName.txt