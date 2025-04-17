#!/bin/bash

rm file1
echo "Memory usage " >> file1
free -h >> file1
echo "Disk usage" >> file1
df -h >> file1

