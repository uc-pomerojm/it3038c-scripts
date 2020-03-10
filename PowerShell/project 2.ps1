#this script sends the latest feature update list to my email
function Get-IP {
    (Get-NetIPAddress).IPAddress | Select-string "192*"
}
    

#Here is the latest feature update
$Version = (wmic qfe list)

#Here is all the information about your computers OS
$OS = (Get-ComputerInfo -Property "os*")
# here is everything in your clipborad
$clipborad = (Get-Clipboard)
$IP = (Get-IP) 
#set the body varible 
$body = "This is a list with the lastest feature updates that you had installed $Version, The Ip Adress of your machine $IP, This is everything in your clipborad $clipborad and All your OS Properties $OS"

write-host($body)

send-mailmessage -to "joeypomeroy@gmail.com" -from "me@mail.com" -subject "IT3038c Windows Sysinfo" -Body "$body" -Smtpserver smtp.gmail.com -port 587 -UseSsl -Credential (Get-Credential)

#Write-Host("email sent")