#!/bin/bash
set -e
##################################################################################################################
# Author	:	Jacob Durant
##################################################################################################################

echo
printf '\e[1;34m%-6s\e[m' "          ADK-Linux will now update!!  "
sleep 1
echo

#----------------------------------------------------------------------------------

#checking which helper is installed
if pacman -Qi yay &> /dev/null; then

		echo 
		echo "          Update will be preformed with yay           "
		echo 
		yay -Syyu --noconfirm

	elif pacman -Qi trizen &> /dev/null; then

		echo 
		echo "         Update will be preformed with trizen         "
		echo 
		trizen -Syyu --noconfirm --needed --noedit

	elif pacman -Qi yaourt &> /dev/null; then

		echo 
		echo "         Update will be preformed with yaourt         "
		echo 
		yaourt -Syyu --noconfirm

	elif pacman -Qi pacaur &> /dev/null; then

		echo 
		echo "         Update will be preformed with pacaur         "
		echo 
		pacaur -Syyu --noconfirm --noedit

	elif pacman -Qi packer &> /dev/null; then

		echo 
		echo "         Update will be preformed with packer         "
		echo 
		packer -Syyu --noconfirm --noedit

	elif pacman -Qi pamac &> /dev/null; then

		echo 
		echo "        Update will be preformed with pamac           "
		echo 
		pamac update --no-confirm

	elif pacman -Qi pacman &> /dev/null; then

		echo 
		echo "        Update will be preformed with pacman           "
		echo 
		pacman -Syyu --no-confirm


	fi

	# Just checking if installation was successful
	if pacman -Syu &> /dev/null; then

		echo 
		echo "          ADK-Linux has NOT been updated       "
		echo 

	else

		echo 
		printf '\e[1;34m%-6s\e[m' "          ADK-Linux is up-to-update!!  "
		echo 


fi
