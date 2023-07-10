
$users = Import-Csv 'C:\R\y .csv'


 foreach ($user in $users) {
$use = ($user.first+"."+$user.lastname)
$d = '@sapiens.com'
$email = $use+$d
$first = $user.first
$lastname = $user.lastname
$password = $user.password



}

