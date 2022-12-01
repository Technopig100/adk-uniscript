#!/bin/bash

code_name=/etc/dev-rel

if grep -q "Titus" $code_name || grep -q "Gothics" $code_name
then
	# You are on Titus or Gothics we will update with yay.
	yay -Syyu --noconfirm
fi

if grep -q "Cascade" $code_name
then
	# You are on Cascade we will update with pacman.
	sudo pacman -Syyu --noconfirm
fi
