## Exercice 2: Les services

# 4.2.1. Obtenir la liste de tous les services dont le nom commence par W et afficher les 
#        propriétés Name, Status et StartType dans un tableau.

Get-Service -Name W* | select Name,Status,StartType | ft


# 4.2.2. Même chose, mais montrer seulement les services en cours d'exécution.

Get-Service -Name W* | select Name,Status,StartType |  ? Status -EQ "Running"| ft

# 4.2.3. Même chose, mais montrer seulement les services en cours d'exécution qui 
#        s'exécutent automatiquement.
Get-Service -Name W* | select Name,Status,StartType |  ? {($_.Status -eq "Running") -and ($_.StartType -eq "Automatic")} | ft



