#! /bin/bash

sudo dnf makecache --refresh
sudo dnf -y install neovim

#No root users allowed
if [ $EUID -ne 0 ] 
then 
	RED='\033[0;31m'
	printf '${RED}  You should not run this as root user';
	exit
fi 

#mk directory
echo 'Warning: this could delete all your neovim config'
while [ true ] 
do 
	echo 'Do you wish to restablish the nvim configuration to install this Y/n:'
	read confirm

	if [ $confirm == 'Y' ]
	then
		break;
	else
		echo 'Exiting Program...'
		exit;
	fi
done

#create folders if they don't exist
if [ -d '~/.config' ] 
then 
	if [ -d '~/.config/nvm' ]
	then
		rm -rf ~/config/nvim/**	
	else
		mkdir ~/.config/nvim
	fi
else 
	mkdir ~/.config
	mkdir ~/.config/nvim

fi
#Install packer


#Get the files and place them in the folders

exit;

		
