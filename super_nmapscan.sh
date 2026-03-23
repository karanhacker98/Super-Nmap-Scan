#!/bin/bash

# Colors for formatting
G='\033[0;32m' # Green
R='\033[0;31m' # Red
Y='\033[0;33m' # Yellow
B='\033[0;34m' # Blue
C='\033[0;36m' # Cyan
W='\033[0m'    # White

clear

# --- Developer Header Section ---
echo -e "${C}==================================================${W}"
echo -e "${G}      ____      _                  ____  _     ${W}"
echo -e "${G}     / ___|   _| |__   ___ _ __   | __ )(_)___ ${W}"
echo -e "${G}    | |  | | | | '_ \ / _ \ '__|  |  _ \| / __|${W}"
echo -e "${G}    | |__| |_| | |_) |  __/ |     | |_) | \__ \\${W}"
echo -e "${G}     \____\__, |_.__/ \___|_|     |____/|_|___/${W}"
echo -e "${G}          |___/                                ${W}"
echo -e "${C}==================================================${W}"
echo -e "${Y}  Developed By : ${W}Insta:-Cyber Bishnoi"
echo -e "${Y}  Purpose      : ${W}Educational / Testing Only"
echo -e "${C}==================================================${W}"

echo -e "\n${B}[+] Enter Target IPv6 Address:${W}"
read -p " >> " target_ip

if [ -z "$target_ip" ]; then
    echo -e "${R}[!] IP cannot be empty!${W}"
    exit 1
fi

echo -e "\n${C}--- SELECT ACTION ---${W}"
echo -e "${G}1)${W} Quick Port Scan (Nmap)"
echo -e "${G}2)${W} Geolocation Lookup (IP Info)"
echo -e "${G}3)${W} User-Agent & OS Info (Logs)"
echo -e "${G}4)${W} Run All Features (1-Tap)"
echo -e "${G}5)${W} Exit"
read -p "Choose option [1-5]: " choice

case $choice in
    1)
        echo -e "\n${Y}[*] Starting Nmap Scan...${W}"
        nmap -6 -F --unprivileged $target_ip
        ;;
    2)
        echo -e "\n${Y}[*] Fetching Geolocation...${W}"
        curl -s ipinfo.io/$target_ip
        ;;
    3)
        echo -e "\n${Y}[*] Checking Logs for Device Info...${W}"
        if [ -f "ip.txt" ]; then cat ip.txt; else echo -e "${R}No logs found!${W}"; fi
        ;;
    4)
        echo -e "\n${Y}[*] Running Full Analysis...${W}"
        echo -e "${C}--- NMAP RESULT ---${W}"
        nmap -6 -F --unprivileged $target_ip
        echo -e "\n${C}--- LOCATION RESULT ---${W}"
        curl -s ipinfo.io/$target_ip
        echo -e "\n${C}--- DEVICE INFO ---${W}"
        if [ -f "ip.txt" ]; then cat ip.txt; else echo -e "${R}No logs found!${W}"; fi
        ;;
    5)
        echo -e "${G}Happy Hacking! Goodbye.${W}"
        exit 0
        ;;
    *)
        echo -e "${R}Invalid Choice!${W}"
        ;;
esac
