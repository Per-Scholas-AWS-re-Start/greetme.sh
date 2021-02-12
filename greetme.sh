#!/bin/bash

# Contain a comment section with your name, the name of this script, and the purpose of this script.

# Abraham Musa
# greetme.sh
# This script will greet the user and provide date and basic system information.

# FUNCTIONS

function pause(){
   read -p "$*"
}

function response(){
read -r -p "[Y/n]" input

case $input in
    [yY][eE][sS]|[yY])
 echo "Thanks $USER"
 ;;
    [nN][oO]|[nN])
 echo "You cheap A&@&%@%!"
       ;;
    *)
 echo "Invalid input..."
 exit 1
 ;;
esac
}
# ...
# call it

#VARIABLES

CURRENTDATE=`date +"%Y-%m-%d %T"`
CURRENTDATEONLY=`date +"%b %d, %Y"`
CURRENTEPOCTIME=`date +"%Y-%m-%d %T"`
TIME=`date +" %T"`
HOST=`hostname`
USERID=`id -p abrahammusa`
GROUPID=`id -G abrahammusa`

#SCRIPT BEGINS

# Greet the user.

echo "Welcome $USER"
echo "Would you like to play a game?"
pause 'Press [Enter] key to continue...'
echo "Just messing with you!"
pause 'Press [Enter] key to continue...'

# Print the date and the time.
# Print a calendar for this month.

clear
echo "CALENDER, DATE, TIME, AND EPOCH TIME:"
echo ; echo
cal
echo Current Date is: ${CURRENTDATEONLY}
echo Current Date and Time is: `date +"%Y-%m-%d %T"`
echo Current Unix epoch time is: ${CURRENTEPOCTIME}
pause 'Press [Enter] key to continue...'

# Print the name of your machine.

clear
echo "THE NAME OF YOUR MACHINE:"
echo
echo ${HOST}
echo
pause 'Press [Enter] key to continue...'

# Print the name and release of this operating system, (cat /etc/motd).

clear
echo "NAME AND RELEASE OF OPERATIONG SYSTEM:"
echo ; echo
system_profiler SPSoftwareDataType
echo ; echo
echo "THERE IS NO SUCH DIRECTORY ON MAC OS / UNIX"
echo "ON MAC OS RUN: system_profiler SPSoftwareDataType"
pause 'Press [Enter] key to continue...'

# Print a list of all files in your parent directory.

clear
echo "CONTENTS OF PARENT DIRECTORY:"
echo
echo
ls -lah
echo
echo
pause 'Press [Enter] key to continue...'

# Print all the processes root is running

clear
echo "PROCESSES ROOT IS RUNNING:"
echo ; echo
ps -aux
echo ; echo
pause 'Press [Enter] key to continue...'

# Print the value of the TERM, PATH, and HOME variables.

clear
echo "VARIABLE VALUES:"
echo
echo "\$TERM:"
echo $TERM
echo
echo "\$PATH:"
echo $PATH
echo
echo "\$HOME"
echo $HOME
echo
echo
pause 'Press [Enter] key to continue...'

# Print your disk usage (du).

clear
echo "DISK USAGE:"
echo ; echo
pause 'Press [Enter] to run du -ch and view disk usage:'
du -sh ~
pause 'Press [Enter] key to continue...'

# Use the id command to print your group ID.

clear
echo "USER ID, GROUPS, AND GROUP ID'S:"
echo ; echo
echo "Your user ID is: $USERID"
echo ; echo
echo "Your group ID is: $GROUPID"
pause 'Press [Enter] key to continue...'

# Print "Please couldn't you loan me $50.00?"

clear
echo "Please couldn't you loan me \$50.00?"
response
pause 'Press [Enter] key to continue...'

# Tell the user "Good bye" and the current hour (see man pages for the date command).

clear
echo "Goodbye, the current time is: $TIME"
pause 'Press [Enter] key to continue...'
