$response = Invoke-RestMethod -Uri "http://ip-api.com/json"
## Vile de mon addresseip
Write-Host "Mon adresse IP est: $($response.query)"
Write-Host "Mon fournisseur d'accès internet est: $($response.isp)"

## Ville de 8.8.8.8
$google = irm -Uri "http://ip-api.com/json/8.8.8.8"
Write-Host "La ville americaine de l'adresse 8.8.8.8 est $($google.city)"


## Ouvrir la carte google maps
Start-Process -FilePath "https://www.google.com/maps/@?api=1&map_action=map&zoom=17&center=$($google.lat),$($google.lon)"