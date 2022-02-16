#!/bin/bash

files=*
function select-files {
while true 
do
 select FILE in $files exit;
 do 
   case $FILE in
       exit)
          echo "Exiting from the script"
          break
          ;;
       $files)
           perform-action;;
    esac
 done
done 
}       
function perform-action {
    echo "Following actions you can perform on selected file $FILE."
    while true; do
            select ACTION in read-file delete-file check-permission select-other-file exit;
            do
              case $ACTION in
                  read-file)
                     cat $FILE
                     echo "Press Enter to select options again."
                     ;;
                  delete-file)
                     echo "Your about to delete the file, please enter 1 to 'confirm' 0 to 'exit' : "
                     read USERINPUT
                     if [[ $USERINPUT -eq 1 ]]
                     then 
                        rm $FILE
                         echo "Press Enter to select options again."
                     else
                         exit 1
                     fi
                     ;;
                  check-permission)
                     ls -l $FILE
                     echo "Press Enter to select options again."
                     ;;
                  select-other-file)
                     select-files;;
                  exit)
                     echo "You are now exit from this script."
                          exit 0
                          ;;
                  *)
                     echo "Please select correct option from list."
             esac
          done
   done
}
select-files
