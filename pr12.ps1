# Function to count running or stopped services 
# Usage "countservice -status [Running or Stopped]
function countservice{
    # sets the parameter to recieve inputs
    param([string]$Status)

    # gets the list of current running services but doesn't list them in cmd
    $services = $null = Get-Service
    # counts both running and stopped services
    $running = ($services | Where-Object {$_.status -eq "Running"}).count
    $stopped = ($services | Where-Object {$_.status -eq "Stopped"}).count

    # based on parameter will output running or stopped services amount
    if ($Status -eq "Running"){
        Write-Host "Total services is running state = $running"}
    elseif ($Status -eq "Stopped"){
        Write-Host "Total services is stopped state = $stopped"}}
