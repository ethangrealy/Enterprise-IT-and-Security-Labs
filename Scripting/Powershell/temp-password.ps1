$firstName='Sarah'
$lastName='Jones'
$fullName="$firstName $lastName"

$department='Finance'
$jobTitle="Finance Officer"
$office='Brisbane'
$employmentNumber="1842"
$startYear="2026"
$userName=$firstName[0].ToString().ToLower() + $lastName.ToLower()

$accountEnabled=$false

$temporaryPassword=$firstName[0].ToString().ToUpper() + $lastName + '-' + $startYear + '-' + $employmentNumber

Write-Output @"
=================================
USER ACCOUNT SUMMARY
=================================

Employee: $fullName
Department: $department
Role: $jobTitle
Office: $office

Username: $userName
Temporary Password: $temporaryPassword 
Employee Number: $employmentNumber
Start Year: $startYear

Account Enabled: $accountEnabled
"@