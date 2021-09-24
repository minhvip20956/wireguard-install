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

### I. Automated install V1 (Best for Ubuntu and Debian Server with Public IP)

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

### II. Automated install V2 (For All System list in OS Support and Ubuntu/Debian behind NAT)

*Warning: Please update and upgrade your OS to latest before install*

*If you are going to run V2 script because V1 script error is installed. Please run the command "cmvpn" and select Remove Wireguard before running this install command. This ensures the system has been cleaned up before you install the V2 script.*

*If your server is behind NAT. Please open the port you need to use with UDP protocol. Example: 60354/UDP*

**a) Install with command:**

*Need Root Permissions, not Sudo*

```bash
bash <(curl https://raw.githubusercontent.com/minhvip20956/wireguard-install/main/vpn2.sh || wget -O - https://raw.githubusercontent.com/minhvip20956/wireguard-install/main/vpn2.sh)
```
You will need to provide information during installation (IP or Domain Hostname, port, Private IP, first profile name, etc...). Please follow the instructions.

**b) Manager Script**

Just with the following simple command. Every component you need is built-in. 

```bash
cmvpn
```

For phones, please open the Wireguard app and select "+" and select scan QR code to add VPN configuration. For PC, please copy the entire contents of the conf file into "Add Empty Tunnel" of Wireguard

### III. Client
- For Windows: [https://download.wireguard.com/windows-client/wireguard-installer.exe](https://download.wireguard.com/windows-client/wireguard-installer.exe)
- For MacOS: [https://itunes.apple.com/us/app/wireguard/id1451685025?ls=1&mt=12](https://itunes.apple.com/us/app/wireguard/id1451685025?ls=1&mt=12)
- For Android: [https://play.google.com/store/apps/details?id=com.wireguard.android](https://play.google.com/store/apps/details?id=com.wireguard.android)
- For IOS: [https://itunes.apple.com/us/app/wireguard/id1441195209?ls=1&mt=8](https://itunes.apple.com/us/app/wireguard/id1441195209?ls=1&mt=8)

### IV. Move Version 1 to Version 2 (lost all key)
*If you are running well script V1. It is not necessary to upgrade to V2. I will support both versions.*
- run "cmvpn" and choice remove Wireguard
- Delete all conf for user file in directory
- Run Command Version 2

### V. Know Bug (Show Bug with Systemctl status wg-quick@wg0.service)
- RTNETLINK answers: Operation not supported (If you are trying to establish a WireGuard connection with a wg-quick command and receive the following error. Most likely the wireguard kernel module is not loaded in your system. To fix this, open the terminal and run the following command "sudo modprobe wireguard" and restart your server)

## Good Luck!!!
