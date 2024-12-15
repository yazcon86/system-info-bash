#!/bin/bash

echo "System Hostname:"
hostname

echo -e "\nOperating System:"
lsb_release -d

echo -e "\nHow long the system has been online:"
uptime

echo -e "\nLinux Kernel Version:"
uname -r

echo -e "\nGeneral CPU information:"
lscpu | grep -E '^Model name|^CPU\(s\)|^Thread|^Core|^Socket|^NUMA|^Vendor ID|^Architecture'

echo -e "\nGeneral amount of memory available and free on the system (human-readable):"
free -h

echo -e "\nIP information (IP address, MAC address, etc.) of all network interfaces:"
ip -o addr show

echo -e "\nAmount of filesystem utilization in a human-readable output and the filesystem types:"
df -hT

echo -e "\nLast five lines of the general log file that contain the word “error” (case-insensitive):"
grep -i "error" /var/log/syslog | tail -n 5
