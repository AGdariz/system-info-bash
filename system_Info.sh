#!/bin/bash

# System information script
# Adrian's bash script.

{
echo "System Today's Date to start : $(date)"
echo "Adrian's bash script"
echo

echo "System Hostname : $(hostname)"
echo

echo "Operating System : "
lsb_release -a
echo

echo "System has been online for : $(uptime -p)"
echo

echo "Linux Kernel Version : $(uname -r)"
echo

echo "General CPU information :"
lscpu
echo

echo "Memory information :"
free -h
echo

echo "Network Interface info : "
ip address
echo

echo "Filesystem Utilization and Types : "
df -hT
echo

echo "General log that contains last 5 line of 'errors'"
journalctl | grep -i "error" | tail -n 5
echo

echo "The end of the script, here is the output file that contains the system info : "

} > system_info.txt
