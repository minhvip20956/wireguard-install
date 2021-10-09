![Banner](/banner.jpg)
<br />
Wireguard Installation and Manager script by Cong Minh Vuong
<br />
### OS Support
*(Ubuntu 20.04 LTS recommend)*
- Ubuntu 18.04 LTS | Ubuntu 20.04 LTS
- Debian 10 | Debian 11
- CentOS 7 | (With SELinux Disabled)
- CentOS 8 or Almalinux Rocky Linux | (With SELinux Disabled)

### I. Automated install V1 (For Ubuntu and Debian Server with Public IP)

*Warning: Please update and upgrade your OS to latest before install*

**a) Install with command:**

*Need Root Permissions, not Sudo*

```bash
bash <(curl https://raw.githubusercontent.com/minhvip20956/wireguard-install/main/vpn.sh || wget -O - https://raw.githubusercontent.com/minhvip20956/wireguard-install/main/vpn.sh)
```
You will need to provide information during installation (IP or Domain Hostname, port, Private IP, first profile name, etc...). Please follow the instructions.

**b) Manager Script**

Just with the following simple command. Every component you need is built-in.

```bash
cmvpn
```

For phones, please open the Wireguard app and select "+" and select scan QR code to add VPN configuration. For PC, please copy the entire contents of the conf file into "Add Empty Tunnel" of Wireguard

### II. Client
- For Windows: [https://download.wireguard.com/windows-client/wireguard-installer.exe](https://download.wireguard.com/windows-client/wireguard-installer.exe)
- For MacOS: [https://itunes.apple.com/us/app/wireguard/id1451685025?ls=1&mt=12](https://itunes.apple.com/us/app/wireguard/id1451685025?ls=1&mt=12)
- For Android: [https://play.google.com/store/apps/details?id=com.wireguard.android](https://play.google.com/store/apps/details?id=com.wireguard.android)
- For IOS: [https://itunes.apple.com/us/app/wireguard/id1441195209?ls=1&mt=8](https://itunes.apple.com/us/app/wireguard/id1441195209?ls=1&mt=8)

### III. Know Bug (Show Bug with Systemctl status wg-quick@wg0.service)
- RTNETLINK answers: Operation not supported (If you are trying to establish a WireGuard connection with a wg-quick command and receive the following error. Most likely the wireguard kernel module is not loaded in your system. To fix this, open the terminal and run the following command "sudo modprobe wireguard" and restart your server)

## Good Luck!!!
