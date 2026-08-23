#!/bin/bash

# ============================================================
#        Linux System Information Script
#        DevOps Practice | ~1.5 Years Experience
# ============================================================

# ---------- Colors ----------
GREEN='\033[0;32m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'   # No Color

# ---------- Header ----------
echo -e "${BLUE}============================================================${NC}"
echo -e "${CYAN}           LINUX SYSTEM INFORMATION REPORT${NC}"
echo -e "${BLUE}============================================================${NC}"

# ---------- Host Information ----------
echo
echo -e "${YELLOW}[1] HOST INFORMATION${NC}"
echo -e "${BLUE}------------------------------------------------------------${NC}"

echo -e "${GREEN}Hostname:${NC} $(hostname)"
echo -e "${GREEN}IP Address:${NC} $(hostname -I | xargs)"

# ---------- Running Processes ----------
echo
echo -e "${YELLOW}[2] RUNNING PROCESSES${NC}"
echo -e "${BLUE}------------------------------------------------------------${NC}"

ps

# ---------- Memory Information ----------
echo
echo -e "${YELLOW}[3] MEMORY USAGE${NC}"
echo -e "${BLUE}------------------------------------------------------------${NC}"

free -h

# ---------- Disk Information ----------
echo
echo -e "${YELLOW}[4] DISK USAGE${NC}"
echo -e "${BLUE}------------------------------------------------------------${NC}"

df -h

# ---------- Completion ----------
echo
echo -e "${GREEN}============================================================${NC}"
echo -e "${GREEN} System information collected successfully!${NC}"
echo -e "${GREEN}============================================================${NC}"

echo
echo -e "${CYAN}Script completed at:${NC} $(date)"