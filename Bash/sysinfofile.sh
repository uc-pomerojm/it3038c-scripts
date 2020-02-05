#!/bin/bash
#this script will send emails to me 
emailaddress=joeypomeroy@gmail.com
today=$(date +"%d:%m:%Y %H:%M:%S")
ip=$(ip a | grep 'dynamic ens192' | awk ' {print $2} ' )
hostname=$HOSTNAME
content="My User is $USER my Hostname is $hostname my Ip is $ip and my email is $emailaddress"
echo $content 
mail -s "IT3038C Linux IP" $emailaddress <<< $(echo -e $content)

