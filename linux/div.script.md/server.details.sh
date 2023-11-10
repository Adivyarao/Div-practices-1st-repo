#!/bin/bash


echo "enter your name"
read name

#hostname of the server
hostname=$(hostname)

echo "Server name for: $hostname"

#oparating system info
os_info=$(cat /etc/os-release)

echo "Oparating system info: $os_info"

#CPU info
cpu_info=$(lscpu)

echo "cp information: $cpu_info"

#memory info
mem_info=$(free -h)
