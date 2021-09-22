# Check OS version
	if [[ -e /etc/debian_version ]]; then
		source /etc/os-release
		OS="${ID}" # debian or ubuntu
		if [[ ${ID} == "debian" || ${ID} == "raspbian" ]]; then
			if [[ ${VERSION_ID} -lt 10 ]]; then
				echo "Your version of Debian (${VERSION_ID}) is not supported. Please use Debian 10 Buster or later"
				exit 1
			fi
		fi
	elif [[ -e /etc/fedora-release ]]; then
		source /etc/os-release
		OS="${ID}"
	elif [[ -e /etc/centos-release ]]; then
		source /etc/os-release
		OS=centos
	elif [[ -e /etc/arch-release ]]; then
		OS=arch
	else
		echo "Looks like you aren't running this installer on a Debian, Ubuntu, Fedora, CentOS or Arch Linux system"
		exit 1
	fi

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
