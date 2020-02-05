#this script sends my ip to my email

#$IP is my ip fuction 

function getIP {
(Get-NetIPAddress).IPAddress | Select-string "192*"
}

#set ip variable 
$IP = (getIP)
    
$Version = (Get-Host).Version

write-host("this machine ip is $IP")

#set the body varible 
$body = "This machines ip is $IP. User is $User Hostname is $env:COMPUTERNAME the date is Get-Date PowerShell Version is $Version"

write-host($body)

send-mailmessage -to "joeypomeroy@gmail.com" -from "me@mail.com" -subject "IT3038c Windows Sysinfo" -Body "$body" -Smtpserver smtp.gmail.com -port 587 -UseSsl -Credential (Get-Credential)

#Write-Host("email sent")
