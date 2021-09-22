# Install Wget to Download Script
	if [[ ${OS} == 'ubuntu' ]] || [[ ${OS} == 'debian' && ${VERSION_ID} -gt 10 ]]; then
		apt-get update
		apt-get install -y wget
	elif [[ ${OS} == 'debian' ]]; then
		apt update
		apt-get install -y wget
	elif [[ ${OS} == 'fedora' ]]; then
		dnf install -y wget
	elif [[ ${OS} == 'centos' ]]; then
		yum -y install wget
	elif [[ ${OS} == 'arch' ]]; then
		pacman -S --needed --noconfirm wget
	fi
# Script Install
wget https://raw.githubusercontent.com/minhvip20956/wireguard-install/main/cmvpn -O /usr/bin/cmvpn
chmod +x /usr/bin/cmvpn
cmvpn
