$nr1 = Read-Host "Insert first number"
$nr2 = Read-Host "Insert second number"

if ( $nr1 -eq $nr2 )
{
Write-Host "$nr1 and $nr2 are the same"
}
elseif ( $nr1 -gt $nr2 )
{
Write-Host "$nr1 is bigger than $nr2"
}
elseif ( $nr1 -lt $nr2 )
{
Write-Host "$nr2 is bigger than $nr1"
}
else
{
Write-Host "Please insert numbers"
}

"" ; Write-Host "Select Country :" -ForegroundColor Yellow
Write-Host "1 : India `n2 : Australia `n3 : China" -ForegroundColor Cyan
$choice = Read-Host "Please select a country"

if ( $choice -eq 1 )
{
Write-Host "India's capital is New Delhi"
}
elseif ( $choice -eq 2 )
{
Write-Host "Australia's capital is Canberra"
}
elseif ( $choice -eq 3 )
{
Write-Host "China's capital is Beijing"
}
else
{
Write-Host "insert number from 1-3"
}