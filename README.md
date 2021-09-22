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

### Automated install V1 (For Ubuntu and Debian Server)
```bash
bash <(curl https://raw.githubusercontent.com/minhvip20956/wireguard-install/main/vpn.sh || wget -O - https://raw.githubusercontent.com/minhvip20956/wireguard-install/main/vpn.sh)
```
### Automated install V2 (For All System list in OS Support)

```bash
bash <(curl https://raw.githubusercontent.com/minhvip20956/wireguard-install/main/vpn2.sh || wget -O - https://raw.githubusercontent.com/minhvip20956/wireguard-install/main/vpn2.sh)
```

### Run Only with Command

```bash
cmvpn
```

### Move Version 1 to Version 2 (lost all key)
- run "cmvpn" and choice remove Wireguard
- Delete all conf for user file in directory
- Run Command Version 2

## Good Luck!!!
