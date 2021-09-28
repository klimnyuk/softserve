#!/bin/bash

function all
{
echo 'IP addresses and symbolic names of all hosts in the current subnet:'
nmap -sn 192.168.88.0/24 | grep 192 | sed 's/Nmap scan report for //'
}

function target
{
echo 'List of open system TCP ports:'
netstat -tln
}

function without
{
echo '--all key displays the IP addresses and symbolic names of all hosts in the current subnet'
echo '--target key displays a list of open system TCP ports'
}

case $1 in

"--all")
all;;

"--target")
target;;

*)
without;;

esac
