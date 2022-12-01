#!/bin/bash
set -e
##################################################################################################################
# Author	:	Jacob Durant
##################################################################################################################

echo
printf '\e[1;34m%-6s\e[m' "What would you like to install? "
read pkg
package="$pkg"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

		echo
		echo "           "$package" is already installed                      "
		echo

else

	#checking which helper is installed
	if pacman -Qi yay &> /dev/null; then

		echo 
		echo "            "$package" will be installed with yay               "
		echo 
		yay -S --noconfirm $package

	elif pacman -Qi trizen &> /dev/null; then

		echo 
		echo "       "$package" will be installed with trizen         "
		echo 
		trizen -S --noconfirm --needed --noedit $package

	elif pacman -Qi yaourt &> /dev/null; then

		echo 
		echo "       "$package" will be installed with yaourt         "
		echo 
		yaourt -S --noconfirm $package

	elif pacman -Qi pacaur &> /dev/null; then

		echo 
		echo "       "$package" will be installed with pacaur         "
		echo 
		pacaur -S --noconfirm --noedit  $package

	elif pacman -Qi packer &> /dev/null; then

		echo 
		echo "       "$package" will be installed with packer         "
		echo 
		packer -S --noconfirm --noedit  $package

	elif pacman -Qi pamac &> /dev/null; then

		echo 
		echo "       "$package" will be installed with pamac         "
		echo 
		pamac install --no-confirm $package

	elif pacman -Qi pacman &> /dev/null; then

		echo 
		echo "        "$package" will be installed with pacman        "
		echo 
		pacman -S --no-confirm $package

	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then

		echo 
		echo "        "$package" was installed seccessfull            "
		echo 

	else

		echo 
		echo "          "$package" has NOT been installed!!             "
		echo 

	fi

fi
