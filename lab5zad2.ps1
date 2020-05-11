#zadanie2
write-host "File name [.txt]:" $args[0]
write-host "Char:" $args[1]
$file = $args[0]
$char = $args[1]

if ([string]::IsNullOrWhiteSpace($file) -OR [string]::IsNullOrWhiteSpace($char))
{
    "This variable is empty"
    exit 1
}

$Currentlocation = Get-Location #current location of script
$txt = Get-Content $Currentlocation'\'$file'.txt' #location file.txt

$total = ($txt | Select-String -Pattern [$char] -AllMatches).Matches.Count #number found chars
write-host "Count:" $total "matches"


