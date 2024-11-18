# sets the value to 0
$i = 0

# while the notepad is running prints that it is, 
# if it stops doesn't print an error message
while(Get-Process Notepad -ErrorAction SilentlyContinue){
    Write-Host "Notepad is running"
    # everytime the loop is ran increases the number
    $i++ 
    # waits 1 second before continuing to avoid spam
    start-sleep -Seconds 1
}

# prints the amount of times the loop ran
Write-Host "Notepad was running for $i seconds"