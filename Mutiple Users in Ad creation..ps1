#Creating mutilple users 

$users = Import-Csv "C:\R\t.csv"


 foreach ($user in $users) {
$use = ($user.first+"."+$user.lastname)
$displayname = $user.first + $user.lastname
$d = '@sapiens.com'
$email = $use+$d
$first = $user.first
$lastname = $user.lastname
$password = $user.password

 
New-ADUser -SamAccountName $use -UserPrincipalName $email  -name $use  -DisplayName $displayname -Path "OU=Service&Guest_Accounts,OU=IT-stuff,DC=sapiens,DC=int" -GivenName $first -Surname $lastname -EmailAddress $email -AccountPassword (ConvertTo-SecureString $password -AsPlainText -Force  ) -ChangePasswordAtLogon $true -Enabled $true


}


