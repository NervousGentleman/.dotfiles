#!/bin/bash
#names the variable U as the command uname
U=$(uname)
#checks if the output of U is "linux"
if [ $U != "Linux" ];
then
#outputs a message to the console
	echo "ERROR OPERATING SYSTEM MISMATCH" >> linuxsetup.log
#exits the program
	exit
else
#makes the director TRASH if it doesent already exist
	mkdir -p ~/.TRASH
#checks if vimrc exists
	if [ -f "~/.vimrc" ];
	then
#renames the file
		mv ~/.vimrc ~/.bup_vimrc
#appends a message to the log file
		echo ".VIMRC WAS CHANGED TO .BUP_VIMRC" >> linuxsetup.log
	fi
#overwrites the contents of one file to another
	cat ./etc/vimrc > ~/.vimrc
#appends a message the end of the bashrc file
	echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
fi
