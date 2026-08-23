#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo "================================"
echo "      SERVER HEALTH CHECK"
echo "================================"

# CPU Load
LOAD=$(uptime | awk -F'load average:' '{print $2}')

# Memory
MEMORY=$(free -h | awk '/Mem:/ {print $3 "/" $2}')

# Disk
DISK=$(df -h / | awk 'NR==2 {print $5}')

echo -e "${YELLOW}CPU Load :${NC} $LOAD"
echo -e "${YELLOW}Memory   :${NC} $MEMORY"
echo -e "${YELLOW}Disk     :${NC} $DISK"

# Check SSH service
if systemctl is-active --quiet ssh || systemctl is-active --quiet sshd
then
    echo -e "${GREEN}SSH      : RUNNING${NC}"
else
    echo -e "${RED}SSH      : DOWN${NC}"
fi

echo "================================"
echo "Health check completed: $(date)"
