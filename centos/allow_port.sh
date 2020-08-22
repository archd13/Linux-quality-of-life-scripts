#!/bin/bash
echo What port to open?
read port
echo tcp or udp?
read form
firewall-cmd --zone=public --permanent --add-port=$port/$form
systemctl reload firewall-cmd
