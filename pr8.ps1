# while the notepad is running prints that it is, 
# if it stops doesn't print an error message
while(Get-Process Notepad -ErrorAction SilentlyContinue){
    Write-Host "Notepad is running"
    # waits 1 second before continuing to avoid spam
    start-sleep -Seconds 1
}