# asks the user for numbers as input and makes sure they're treated as numbers not strings
$number1 = [double](Read-Host "Enter first number")
$number2 = [double](Read-Host "Enter second number")

# prints the menu interface
Write-Host "Calculator" -ForegroundColor Green
Write-Host "1: Addition" -ForegroundColor Yellow
Write-Host "2: Subtraction" -ForegroundColor Yellow
Write-Host "3: Division" -ForegroundColor Yellow
Write-Host "4: Multiplication" -ForegroundColor Yellow

# asks the user to choose an option
$choice = Read-Host "Enter your choice"

# according to the number entered will do the equation
Switch($choice){
    1{$result = $number1 + $number2}
    2{$result = $number1 - $number2}
    3{$result = $number1 / $number2}
    4{$result = $number1 * $number2}}

# prints the answer
Write-Host "The sum is $result"