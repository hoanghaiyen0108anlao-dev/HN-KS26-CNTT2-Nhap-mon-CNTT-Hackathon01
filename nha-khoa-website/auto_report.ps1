#Script: auto_report.txt
#ten tac gia:"Hai Yen"
Write-Host "dang loc log..."

"=== BAO CAO LOI ==="> logs/auto_report.txt
Get-Content logs/clinic.log | Select-String "ERROR" >> logs/auto_report.txt
Write-Host "Hoan Thanh"