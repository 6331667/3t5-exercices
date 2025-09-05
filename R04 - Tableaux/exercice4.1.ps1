## Exercice 1: Les fichiers

# 4.1.1. Obtenir tous les fichiers contenus dans le répertoire C:\Windows.
gci -Path C:\Windows -File  


# 4.1.2. Obtenir tous les fichiers contenus dans le répertoire C:\Windows, triés par ordre 
#        décroissant de taille.
gci -Path C:\Windows -File | Sort-Object -Property Length -Descending


# 4.1.3. Même chose, mais montrer seulement les fichiers plus grands que 1 mégaoctet.

gci -Path C:\Windows -File | ? Length -GT 1MB

# 4.1.4. Même chose, mais montrer seulement les fichiers qui pèsent entre 1 et 10 mégaoctets.

gci -Path C:\Windows -File | ? {($_.Length -GT 1MB) -and ($_.Length -lt 10MB)}

# 4.1.5. Même chose, mais montrer seulement les fichiers qui pèsent soit plus de 1 mégaoctet 
#        ou moins de 1 kilooctet.

gci -Path C:\Windows -File | ? {($_.Length -GT 1MB) -or ($_.Length -lt 1KB)}

