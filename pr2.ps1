# Make hastables 1 and 2
$Hashtable1=@{ Name="John","Joe","Mary"; DaysWorked=12,20,18}
$Hashtable2=@{Name="John","Joe","Mary"; SalaryPerDay=100,120,150}
# Make hastable 3
$Hashtable3=@{Name="John","Joe","Mary"; 
    # Salary equals DaysWorked * SalaryPerDay from hashtables 1 and 2
    Salary=
        ($Hashtable1.DaysWorked[0] * $Hashtable2.SalaryPerDay[0]),
        ($Hashtable1.DaysWorked[1] * $Hashtable2.SalaryPerDay[1]),
        ($Hashtable1.DaysWorked[2] * $Hashtable2.SalaryPerDay[2])
}

# print hastables
"" ; $Hashtable1
"" ; $Hashtable2
"" ; $Hashtable3
