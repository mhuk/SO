#zadanie1

$dir_name = Read-Host 'Get directory name'
$number = Read-Host 'Get number'
$Currentlocation = Get-Location #aktualna lokalizacja pliku

if ([string]::IsNullOrWhiteSpace($dir_name) -OR [string]::IsNullOrWhiteSpace($number))
{
    "This variable is empty"
    exit 1
}

while (Test-Path -Path "$Currentlocation\$dir_name")
{
    if ([string]::IsNullOrWhiteSpace($dir_name))
    {
        "Directory name is empty"
        exit 1
    }
    Write-Output "Directory Exists Already"
    $dir_name = Read-Host 'Get directory name'
}
#utworz folder
New-Item -Path $Currentlocation\$dir_name -ItemType directory

For ($i=1; $i -le $number; $i++)
{
    #utworz plik tekstowy
    New-Item -Path $Currentlocation\$dir_name\file$i.txt -ItemType File 
}
