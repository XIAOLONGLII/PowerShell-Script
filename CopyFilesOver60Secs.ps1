foreach($i in Get-ChildItem D:\test)
{
    if($i.CreationTime -lt($(Get-Date).AddSeconds(-60)))
    {
        Copy-Item $i.FullName D:\Scripts
        }
 }
