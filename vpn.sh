echo "Show QR Code With Command"
echo "qrencode -t UTF8 < file.conf"
sleep 3
wget https://raw.githubusercontent.com/minhvip20956/wireguard-install/main/wireguard-install.sh -O wireguard-install.sh
bash wireguard-install.sh
