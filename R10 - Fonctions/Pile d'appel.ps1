function MaFonction ([int]$x, [int]$y) {
    $z = $x + $y
    return $z
}

$a = 3
$b = 5
$c = MaFonction $a $b
Write-Host "La réponse est $c"