# 🚀 Super Nmap Scan (v1.0)
**Super Nmap Scan** is an advanced network reconnaissance tool designed for cybersecurity enthusiasts and network admins. It simplifies complex Nmap commands into a user-friendly, automated experience.

---

## 💎 Core Features
1. **Automated IPv6 Scanning:** Specially tuned for IPv6 targets with error-handling.
2. **1-Tap Deep Analysis:** Scans ports, identifies services, and fetches location in a single click.
3. **Smart Geolocation Tracker:** Integrated with IPInfo API to provide City, Region, Country, and ISP details.
4. **Log Integration:** Direct link to read and analyze logs from CamPhish and other phishing tools.
5. **Zero-Configuration:** Automatically handles unprivileged socket errors on Android/Termux.
6. **Ultra-Lightweight:** Written in pure Bash for maximum speed on mobile devices.

---

## 🛠️ How to Install

```bash
apt update && apt upgrade -y
pkg install git nmap curl -y
git clone [https://github.com/YOUR_USERNAME/Super-Nmap-Scan](https://github.com/YOUR_USERNAME/Super-Nmap-Scan)
cd Super-Nmap-Scan
chmod +x super_nmap.sh
./super_nmap.sh
