﻿#this script sends the latest feature update list to my email

#Here is the latest feature update
$Version = (wmic qfe list)

write-host("this machine latest feature list is $Version")

#set the body varible 
$body = "This machines list of the lastest feature updates that you had installed $Version"

write-host($body)

send-mailmessage -to "joeypomeroy@gmail.com" -from "me@mail.com" -subject "IT3038c Windows Sysinfo" -Body "$body" -Smtpserver smtp.gmail.com -port 587 -UseSsl -Credential (Get-Credential)

#Write-Host("email sent")