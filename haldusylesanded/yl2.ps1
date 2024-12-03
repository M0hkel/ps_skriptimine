# Sisesta ees-ja perenimi
$eesnimi = Read-Host "Sisesta oma eesnimi"
$perenimi = Read-Host "Sisesta oma perenimi"
Write-Host " "
# paneb nimed kokku, väiksed tähed ja eemaldab tühjad kohad
$username = ("$eesnimi.$perenimi".ToLower() -replace '\s','')
Write-Host "Kustutatav kasutaja on $username"

# kustutab antud nimega kasutaja
Remove-LocalUser -Name $username -ErrorAction SilentlyContinue

# vea tekkimisel kasutaja kustutamisel kirjutab sõnumi
if (-not $?) {
    # kui kasutajat pole olemas, kirjutab vastava sõnumi
    if ($Error[0].Exception.Message -like "*was not found*") {
        Write-Host " "
        Write-Host "Kasutaja $username ei eksisteeri!"
    }
    # muu vea korral annab teada, et on tekkinud viga
    else {
        Write-Host " "
        Write-Host "Viga kasutaja kustutamisel!"
    }
}
# kasutaja kustutamisel õnnestumisel annab teada
else {
    Write-Host " "
    Write-Host "Kasutaja $username edukalt kustutatud!"
}
Write-Host " "