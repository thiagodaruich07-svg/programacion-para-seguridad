for ($i = 1; $i -le 3; $i++) {
    Write-Host "--------------------------------------------------"
    Write-Host "Iteración N°: $i"
    
    $fecha = Get-Date
    Write-Host "Fecha y hora exacta: $fecha"
    
    Write-Host "Probando conectividad con 8.8.8.8..."
    Test-Connection -ComputerName "8.8.8.8" -Count 1
    
    if ($i % 2 -eq 0) {
        Write-Host "Resultado del ciclo: La iteración N° $i es un número PAR."
    } else {
        Write-Host "Resultado del ciclo: La iteración N° $i es un número IMPAR."
    }
    
    Start-Sleep -Seconds 1
}

Write-Host "--------------------------------------------------"
Write-Host "El monitoreo ha concluido con éxito."
