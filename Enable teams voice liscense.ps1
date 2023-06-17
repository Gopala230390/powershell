Install-Module -Name microsoftteams

Connect-MicrosoftTeams


  Get-CsOnlineUser  -Identity "gopinath.d"  


 Set-CsPhoneNumberAssignment -Identity "gopinath.d" -EnterpriseVoiceEnabled $true