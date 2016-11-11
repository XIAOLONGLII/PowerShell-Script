function p{
    param($computername)
    return (test-connection $computername -count 1 -quiet)

}