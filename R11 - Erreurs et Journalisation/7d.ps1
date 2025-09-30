try {
    & '.\R11 - Erreurs et Journalisation\7c.ps1'
    Write-Host "Les minutes sont paires!"
}
catch {
    Write-Host "Les minutes sont impaires!"
}