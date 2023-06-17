

$Servers = Get-content "C:\temp\raj.txt"
Foreach ($Server in $Servers){

$SessionArgs = @{
     ComputerName  = $Server
     Credential    = Get-Credential
     SessionOption = New-CimSessionOption -Protocol Dcom
 }
 $MethodArgs = @{
     ClassName     = 'Win32_Process'
     MethodName    = 'Create'
     CimSession    = New-CimSession @SessionArgs
     Arguments     = @{
         CommandLine = "powershell Start-Process powershell -ArgumentList 'Enable-PSRemoting -Force'"
     }
 }
 Invoke-CimMethod @MethodArgs
Invoke-Command -ComputerName $Server -ScriptBlock {
(Get-Package -Name "Forticlien*" | Uninstall-Package -ErrorAction SilentlyContinue)  
}}




