$var = 5

if ($var -eq 5) {Write-Host "Its 5"}

$Hundred = 1..100
$str = ""

$Hundred |  ForEach-Object {$str += $_}

$Hundred | ForEach-Object {
    if ($_ % 2){
        Write-Host "$_ is odd"
    }