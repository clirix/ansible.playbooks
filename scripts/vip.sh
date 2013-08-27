#! /bin/bash
# Description: Get $IP of a Virtualbox guest
# Usage: vip.sh "$VirtualboxGuestName"

VIP=`VBoxManage guestproperty get $1 "/VirtualBox/GuestInfo/Net/0/V4/IP" | awk '{print $2}'`
echo $VIP
