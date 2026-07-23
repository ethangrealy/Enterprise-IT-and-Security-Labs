$department='Finance'
$location='Brisbane'
$mailboxType='Shared'
$domain='contoso.com'
$manager="Michael Smith"
$mailboxEnabled=$false

$mailboxName="$department $mailboxType Mailbox"
$alias=$department.ToLower() + '-' + $mailboxType.ToLower()
$emailAddress="$alias@$domain"

Write-Output @"
=================================
SHARED MAILBOX SUMMARY
=================================

Mailbox Name: $mailboxName
Alias: $alias
Email Address: $emailAddress

Department: $department
Location: $location
Manager: $manager

Mailbox Enabled: $mailboxEnabled
"@
