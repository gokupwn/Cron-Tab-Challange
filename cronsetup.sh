#!/bin/bash
#change username to the normal user name

#-----Colors--------#
lightRed='\033[91m'
lightYellow='\033[93m'
blue='\033[34m'
lightGray='\033[37m'
blink='\033[90m'
lightBlue='\033[94m'
lightGreen='\033[92m'
rest='\033[0m'

#-------Symbols------#
error=$lightRed"[-]"$rest
info=$lightGreen"[?]"$rest
workFine=$blue"[~]"$rest


if [[ $EUID -ne 0 ]]; then
  echo -e "$error You don't say the magic word sudo $error"
  echo -e "$info Please run as root $info"
  exit 1
fi

echo -e $lightYellow"Welcome :)"$rest

echo "Add the following to the opned file: * * * * *  /home/username/Demo/executeCommand.sh"
echo -e $blink"wait..."
sleep(10)
crontab -e 

echo -e $lightGreen"or add this *  *    * * *   root    /home/username/Demo/executeCommand.sh  to the /etc/crontab file (the system wide crontab)"$rest
echo -e $lightRed"Please Don't forget to change username to your machine username :("$rest
echo -e $lightRed"cat cronsetup to get some note"$rest
# or add this *  *    * * *   root    /home/username/Demo/executeCommand.sh  to the /etc/crontab file (the system wide crontab)
# that's what happen in real world scenario
