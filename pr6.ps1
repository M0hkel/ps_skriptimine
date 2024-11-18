# Imports the csv file table
$table = Import-Csv C:\Users\user\pr6.csv

# for each row in the table initiate following commands
foreach($row in $table)
{
    # if the age is equal or between 4-10
    if ( [int]$row.Age -cge 4 -and [int]$row.Age -cle 10 )
    {
        # adds a new column called School with the value Junior
        $row | Add-Member -NotePropertyName 'School' -NotePropertyValue 'Junior' -Force
    }
    # if the age is equal or between 11-17
    elseif ([int]$row.Age -cge 11 -and [int]$row.Age -cle 17)
    {
        # adds a new column called School with the value Senior
        $row | Add-Member -NotePropertyName 'School' -NotePropertyValue 'Senior' -Force
    }
    # if the age is not in the 2 value ranges adds a new column called School with the value Not in School
    else
    {
        $row | Add-Member -NotePropertyName 'School' -NotePropertyValue 'Not in School' -Force
    }
}

# Prints the end result table
$table

# Exports the table as a csv file
$table | Export-Csv -Path "pr6-output.csv" -NoTypeInformation