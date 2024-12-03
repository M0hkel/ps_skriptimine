# Sisesta ees-ja perenimi
$eesnimi = Read-Host "Sisesta oma eesnimi"
$perenimi = Read-Host "Sisesta oma perenimi"
Write-Host " "
# paneb nimed kokku, väiksed tähed ja eemaldab tühjad kohad
$username = ("$eesnimi.$perenimi".ToLower() -replace '\s','')
Write-Host "Loodav Kasutaja on $username"

# loob parooli
$password = ConvertTo-SecureString "Parool1!" -AsPlainText -Force

# teeb uue kasutaja kasutades ennem tehtud kasutaja nime ja parooli
New-LocalUser "$username" -Password $password -FullName "$eesnimi $perenimi" -Description "Local account - $username" -ErrorAction SilentlyContinue

# vea tekkimisel kasutaja tegemisel 
if (-not $?) {
    if ($Error[0].Exception.Message -like "*already exists*") {
        Write-Host " "
        Write-Host "Kasutaja $username on juba olemas!"
    }
    else {
        Write-Host " "
        Write-Host "Viga kasutaja loomisel!"
    }
}
else {
    Write-Host " "
    Write-Host "Kasutaja $username edukalt loodud!"
}
Write-Host " "