$rando=0
$logfile = "C:\logs\rando.log"
for($i=0; $i -lt 5; $i++) {
$rando=Get-Random -Maximum 1000 -Minimum 1
write-host($rando)
add-content $logfile "info: Random Number is ${rando}"
}
