# creates an empty table to add values to
$table = @()
# creates a pool from which to take colors from
$colorpool = @("Red", "Green", "Yellow", "Blue")

# Creates a rows with values from 1-20 and adds it to the empty table 
for ($i = 1 ; $i -le 20 ; $i++){
    $row = [PSCustomObject]@{
        RollNumber = $i
    }
    $table += $row
}

# for each row add another column with a random color from the color pool
foreach($row in $table){
    $color = Get-Random -InputObject $colorpool
    $row | Add-Member -NotePropertyName 'Group' -NotePropertyValue $color -Force
}

# prints the end table
$table