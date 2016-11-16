get-childitem -Path "D:\test" |
    where-object {$_.LastWriteTime -lt (get-date).AddDays(-30)} | 
    move-item -destination "D:\30days"
    