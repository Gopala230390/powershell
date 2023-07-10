Get-WmiObject -Class Win32_Product | Select-Object IdentifyingNumber , Name | Format-Table | export-csv -Path "C:\intel\appse.csv"
