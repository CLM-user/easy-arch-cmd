clear
echo "easy-arch-cmd (EAC) installer"
sleep 1
echo "This script will be automatized"
echo "Verifying root..."
if [ "$EUID" -ne 0 ]; then
	echo "Please execute script with sudo or being root."
	exit 1
fi

echo "Verified root!"
sleep 1
echo
echo "+-Moving files to /usr/local/bin-+"
echo "| apt -------- installs packages |
chmod +x ~/easy-arch-cmd/commands/apt
mv ~/easy-arch-cmd/commands/apt /usr/local/bin
echo "+--------------------------------+
echo
echo "Succesfully installed!"
sleep 1
echo "Script will auto destruct"
sleep 1
rm -rf ~/easy-arch-cmd/install.sh
EOF
