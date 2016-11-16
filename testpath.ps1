if(Test-Path D:\Scripts)
{
   if(Test-Path D:\Scripts\Hello.docx){
        "Folder and File exist"
    }
    else{
        "Folder exists,file doesn't"
    }

}
else
{
    "D:\Scripts does not exist"
}