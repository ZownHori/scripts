#! /bin/bash

#This script is designed to find hosts with MySQL installed

echo "Enter the starting IP address:"
read FirstIP

echo "Enter the last octet of the last IP address:"
read LastOctetIp

echo "Enter the port number you want to scan for:"
read port

nmap -sT $FirstIP-$LastOctetIP -p $port > /dev/null -oG MySQLscan

cat MySQLscan | grep open > MySQLscan2

cat MySQLscan2
