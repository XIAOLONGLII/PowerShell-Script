﻿function Get-LoggedIn{

[CmdletBinding()]

param(

[Parameter(Mandatory=$True)]

[string[]]$computername

)

foreach($pc in $computername){

$logged_in =(gwmi win32_computersystem -COMPUTER $pc).username

$name = $logged_in.split(“\“)[1]

“{0}: {1}” -f $pc,$name

}

}