####------Start and Stop an Apache server-----#####
#-------------------------------------------------#

#!/bin/bash

echo "Please provide specific path: "
read FILEPATH

if [[ -e $FILEPATH ]] 
then 
   echo "${FILEPATH} exist, checking files and its permission in it."
   files=`ls $FILEPATH`
   echo $files
   for file in $files
   do 
     if [[ -f $file  && -x $file ]]
     then 
         echo "$file -- Does have permission. "
     else 
         echo "$file -- No execute permission."
     fi
   done
else#!/bin/bash

echo "-----------------------------"
echo "----------Select Server------"
echo "-----------------------------"
echo "1 - Apacher Server"
echo "2 - MySql Server"

read USERINPUT
if [[ $USERINPUT -eq 1 ]]
then
	$(apache_server)

elif [[ $USERINPUT -eq 2 ]]
then
	$(mysql_server)
else 
	echo"Please Select Correct Option."
	exit 0
fi

function apache_server () {
	select action in start-server stop-server status-of-server exit;
	do
		case $action in
			exit)
				echo "Exiting from the scrip"
				break
				;;
			status-of-server)
				echo "Checking the server status"
				/etc/init.d/apache2 status
				;;
			start-server)
				/etc/init.d/apache2  start
				echo "Apache Server has been started"
				;;
			stop-server)
				/etc/init.d/apache2 stop
				echo "Apache Server stopped."
				;;
			*)
		       	    echo "Please select correct option."
	         esac
      done	
}     

apache_server

   echo "Please provide correct file path."
fi
