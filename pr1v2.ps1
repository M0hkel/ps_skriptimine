# array listid 
$a1 = @(1,2,3)
$a2 = @(4,5,6)

# tuhi array kuhu arve lisada
$a3 = New-Object -TypeName "System.Collections.Arraylist" ## $a3 [System.Collections.Arraylist]

# liidab array a1 ja a2, array a3-me
$a3.Add($a1[0] + $a2[0]) | Out-Null
$a3.Add($a1[1] + $a2[1]) | Out-Null
$a3.Add($a1[2] + $a2[2]) | Out-Null

# kirjutab valja koik arrayd
"" ; $a1
"" ; $a2
"" ; $a3