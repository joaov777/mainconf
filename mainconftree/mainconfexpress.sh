#!/bin/bash

clear
        echo '########## MAIN CONF ##########'
        echo "- ## EXPRESS INSTALLATION ## -" ; sleep 3

    ~/mainconf/mainconftree/updatesystem.sh 
    clear
    ~/mainconf/mainconftree/updatepackages.sh 
    clear
    ~/mainconf/mainconftree/setupgituser.sh 
    clear
    ~/mainconf/mainconftree/installzsh.sh 
    clear
    ~/mainconf/mainconftree/updatezshrc.sh 
    clear