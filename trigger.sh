#!/bin/bash



triggercore() {
	cd ~
	wget -q https://github.com/joaov777/mainconf/archive/master.zip
	sudo unzip -qq master.zip 
	sudo mv mainconf-master mainconf
	sudo chmod -R 777 mainconf/
	sudo chown -R $USER:$USER mainconf/
	sudo rm master.zip

	echo '>> mainconf success!' 
	sleep 2

	/home/$USER/mainconf/mainconf.sh #calling the main script as current $USER
	sudo rm -rf ~/mainconf #deleted folder without git

	#downloading main repo to current $USER
	git clone https://github.com/joaov777/mainconf.git /home/$USER 
	sudo chmod -R 777 ~/mainconf 

	rm -- "$0" #script auto delete
}


	if [ ! -d ~/mainconf ]; #in case directory doesn't exists
	then
		triggercore
	else
		echo '>> Mainconf folder exists!!'
		sleep 2
		echo '>> Deleting it!!'
		sleep 2
		sudo rm -rf ~/mainconf/ >> /dev/null
		
		echo '>> Mainconf folder deleted!!'
		sleep 2
		echo '>> Restarting script!!'
		sleep 2
		triggercore
	fi