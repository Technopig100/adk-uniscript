#!/bin/bash
set -e
##################################################################################################################
# Author	:	Jacob Durant
##################################################################################################################

echo
printf '\e[1;34m%-6s\e[m' "What would you like to remove? "
read pkg
package="$pkg"

#----------------------------------------------------------------------------------

#checking which helper is installed
if pacman -Qi yay &> /dev/null; then

		echo 
		echo "          "$package" will be removed with yay           "
		echo 
		yay -R --noconfirm $package

	elif pacman -Qi trizen &> /dev/null; then

		echo 
		echo "         "$package" will be removed with trizen         "
		echo 
		trizen -R --noconfirm --needed --noedit $package

	elif pacman -Qi yaourt &> /dev/null; then

		echo 
		echo "         "$package" will be removed with yaourt         "
		echo 
		yaourt -R --noconfirm $package

	elif pacman -Qi pacaur &> /dev/null; then

		echo 
		echo "         "$package" will be removed with pacaur         "
		echo 
		pacaur -R --noconfirm --noedit  $package

	elif pacman -Qi packer &> /dev/null; then

		echo 
		echo "         "$package" will be removed with packer         "
		echo 
		packer -R --noconfirm --noedit  $package

	elif pacman -Qi pamac &> /dev/null; then

		echo 
		echo "        "$package" will be removed with pamac           "
		echo 
		pamac remove --no-confirm $package

	elif pacman -Qi pacman &> /dev/null; then

		echo 
		echo "        "$package" will be removed with pacman           "
		echo 
		pacman -R --no-confirm $package

	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then

		echo 
		echo "              "$package" was not removed                "
		echo 

	else

		echo 
		echo "          "$package" was removed successfully           "
		echo 

fi
