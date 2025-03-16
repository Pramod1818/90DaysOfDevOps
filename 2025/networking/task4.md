# Networking Command Cheat Sheet

This cheat sheet covers fundamental networking commands for configuration, troubleshooting, security, monitoring, and more.

## 1. **Network Configuration**
| Command | Purpose | Usage |
|---------|---------|-------|
| `ip addr show` | Display IP addresses and network interfaces | `ip addr show` |
| `ip link show` | Display network interfaces | `ip link show` |
| `ip route show` | Display routing table | `ip route show` |
| `ifconfig` | Configure network interfaces (deprecated, use `ip` instead) | `ifconfig` |
| `netstat -i` | Display network interface statistics | `netstat -i` |
| `netstat -r` | Display routing table | `netstat -r` |

## 2. **Network Troubleshooting**
| Command | Purpose | Usage |
|---------|---------|-------|
| `ping <host>` | Test network connectivity to a host | `ping google.com` |
| `traceroute <host>` | Show the route packets take to a host | `traceroute google.com` |
| `dig <domain>` | Query DNS for domain information | `dig example.com` |
| `nslookup <domain>` | Query DNS for domain information | `nslookup example.com` |
| `tcpdump <options>` | Capture and analyze network traffic | `tcpdump -i eth0` |
| `wireshark` | GUI tool for network packet analysis | `wireshark` |
| `mtr <host>` | Continuous traceroute with packet loss analysis | `mtr google.com` |
| `nmap <host>` | Scan for open ports on a host | `nmap -sS 192.168.1.1` |

## 3. **Network Security**
| Command | Purpose | Usage |
|---------|---------|-------|
| `iptables -L` | Display firewall rules | `iptables -L` |
| `ufw status` | Display firewall status (Ubuntu/Debian) | `ufw status` |
| `firewall-cmd --list-all` | Display firewall rules (CentOS/RHEL) | `firewall-cmd --list-all` |
| `ssh <user>@<host>` | Secure remote login | `ssh user@192.168.1.10` |
| `scp <file> <user>@<host>:<path>` | Secure file transfer | `scp file.txt user@remote:/home/user/` |
| `rsync <options> <source> <destination>` | Sync files between systems | `rsync -avz file user@remote:/backup/` |

## 4. **Network Connectivity**
| Command | Purpose | Usage |
|---------|---------|-------|
| `ssh-keygen` | Generate SSH keys | `ssh-keygen -t rsa -b 4096` |
| `ssh-copy-id <user>@<host>` | Copy SSH public key to remote host | `ssh-copy-id user@remote` |
| `wget <url>` | Download files from the internet | `wget http://example.com/file.zip` |
| `curl <url>` | Transfer data using HTTP requests | `curl -I http://example.com` |
| `ftp <host>` | Establish an FTP connection | `ftp ftp.example.com` |

## 5. **DNS and DHCP**
| Command | Purpose | Usage |
|---------|---------|-------|
| `host <domain>` | Query DNS for domain information | `host example.com` |
| `dhcping <options>` | Test DHCP server connectivity | `dhcping -s 192.168.1.1` |
| `dhclient <interface>` | Obtain an IP address from DHCP | `dhclient eth0` |
| `named-checkconf` | Check DNS configuration | `named-checkconf` |
| `rndc status` | Display DNS server status | `rndc status` |

## 6. **Network Monitoring**
| Command | Purpose | Usage |
|---------|---------|-------|
| `top` | Display system resource usage | `top` |
| `htop` | Interactive process viewer | `htop` |
| `nethogs` | Display per-process network bandwidth usage | `nethogs` |
| `iftop` | Display real-time network bandwidth usage | `iftop` |
| `iptraf` | Display detailed network traffic information | `iptraf` |

## 7. **Network Tools**
| Command | Purpose | Usage |
|---------|---------|-------|
| `netcat <host> <port>` | Establish a network connection | `netcat 192.168.1.1 22` |
| `nc <host> <port>` | Alternative to netcat | `nc -zv google.com 80` |
| `telnet <host> <port>` | Establish a telnet connection | `telnet example.com 80` |
| `whois <domain>` | Query WHOIS database for domain details | `whois example.com` |
| `dig +short <domain>` | Get only the IP address of a domain | `dig +short example.com` |

## 8. **Wireless Networking**
| Command | Purpose | Usage |
|---------|---------|-------|
| `iwconfig` | Configure wireless network interfaces | `iwconfig wlan0` |
| `iwlist` | Scan for available wireless networks | `iwlist wlan0 scan` |
| `wpa_supplicant` | Manage WPA/WPA2 authentication | `wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant.conf` |
| `wpa_cli` | Manage WPA authentication interactively | `wpa_cli` |

## 9. **VPN and Tunneling**
| Command | Purpose | Usage |
|---------|---------|-------|
| `openvpn` | Establish a VPN connection | `openvpn --config client.ovpn` |
| `pptp` | Establish a PPTP VPN connection | `pptp vpn.example.com` |
| `ssh -L` | Create an SSH local tunnel | `ssh -L 8080:localhost:80 user@remote` |
| `ssh -R` | Create an SSH remote tunnel | `ssh -R 8080:localhost:80 user@remote` |

## 10. **Network Testing**
| Command | Purpose | Usage |
|---------|---------|-------|
| `hping <host>` | Test network connectivity and latency | `hping3 -S google.com -p 80` |
| `nping <host>` | Advanced pinging tool | `nping --tcp google.com` |
| `iperf <host>` | Test network bandwidth and performance | `iperf -c server` |
| `nuttcp <host>` | Measure network throughput | `nuttcp -T10 server` |



