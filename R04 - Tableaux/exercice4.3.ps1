## Exercice 3: Défis

# 4.3.1. 🏆 Créer 10 fichiers nommés "Fichier 1.txt" à "Fichier 10.txt" dans le répertoire 
#        du profil de l'utilisateur.

1..10 | % {ni -Path C:\Labo -ItemType File -Name "Fichier $_.txt"}


# 4.3.2. 🏆 Dressez la liste de tous les fichiers .EXE dans C:\Windows, sous forme d'un 
#         tableau montrant le nom du fichier en majuscules ainsi que la taille approximative 
#         en kilooctets, arrondi à l'entier près.

gci -Path C:\Windows -File |  select {(($_.Name).ToUpper()), ([math]::Round($_.Length))} |ft

# 4.3.3. 🏆🏆 À partir de votre ligne de commande à la question 4.2.3, créez un fichier nommé 
#        "Service_nomduservice.txt" pour chaque service dans le répertoire courant. Chaque 
#        fichier doit contenir la liste détaillée de toutes les propriétés de ce service.
Get-Service -Name W* | select*|Tee-Object -FilePath "C:\Labo\Service_{0}.txt" -f $_.Name |select Name,Status,StartType |  ? {($_.Status -eq "Running") -and ($_.StartType -eq "Automatic")} | ft
