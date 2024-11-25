# sets the value to 0
$i = 0
$process = Get-Process Notepad -ErrorAction SilentlyContinue

# if the process is running then starts the loop
if ( $process ){
    while(Get-Process Notepad -ErrorAction SilentlyContinue){
        Write-Host "Notepad is running" -ForegroundColor Green
        # everytime the loop is ran increases the number
        $i++ 
        # waits 1 second before continuing to avoid spam
        start-sleep -Seconds 1}
    # when the process stops prints message and time it ran for
    Write-Host "Notepad stopped running" -ForegroundColor Red
    Write-Host "Notepad ran for $i seconds"}
else{
    Write-Host "Notepad is not running" -ForegroundColor Red}
