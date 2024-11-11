# array listid 
$a1 = @(1,2,3)
$a2 = @(4,5,6)

# tuhi array kuhu arve lisada
$a3 = @()

# liidab array a1 ja a2, lisab a3
$a3 += $a1[0] + $a2[0]
$a3 += $a1[1] + $a2[1]
$a3 += $a1[2] + $a2[2]

# kirjutab valja koik arrayd
"" ; $a1
"" ; $a2
"" ; $a3