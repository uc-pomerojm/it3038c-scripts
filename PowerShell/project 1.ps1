#this script sends my ip to my email

#$IP is my ip fuction 

function getIP {
(Get-NetIPAddress).IPAddress | Select-string "192*"
}

#set ip variable 
$IP = (getIP)

#here isthe latest feature update
$Version = (wmic qfe list)

write-host("this machine latest feature list is $Version")

#set the body varible 
$body = "This machines ip is $IP. User is $User the date is Get-Date, PowerShell Here is a list of the lastest feature updates that you had installed $Version"

write-host($body)

send-mailmessage -to "joeypomeroy@gmail.com" -from "me@mail.com" -subject "IT3038c Windows Sysinfo" -Body "$body" -Smtpserver smtp.gmail.com -port 587 -UseSsl -Credential (Get-Credential)

#Write-Host("email sent")