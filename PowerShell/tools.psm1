function getIP {
$ip = Get-NetIPAddress | Where-Object {$_.IPv4Address -like '192*'
return $ip.IPv4Address
}