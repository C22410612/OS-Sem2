#!/bin/bash

chmod 777

TODAY=$(date +"%Y_%m_%d")

run=1



while [ $run -eq 1 ]
do

  echo -e "\n\n* Bash Commands *\n\n1. List files\n2. Show free dish space\n3. Show system patch\n4. Display command history\n5. Backup files\n6. Exit"

  read menuInput

  echo -e "\n\n"

  case $menuInput in

    1)
          echo -e "Displaying files in the current directory\n\n"
          echo | ls
          
      ;;

    2)
        echo -e "Displaying free disk space\n\n"
        echo | df -H
      
      ;;

    3)
        echo -e "Displaying the system path\n\n"

        echo $PATH
      ;;

    4)
        echo -e "Displaying command history\n\n"

      
    ;;

    5)
        echo -e "Choose a directory to backup\n"
        
        read backupDirectory

        
        BackupFolder=/workspaces/OS-Sem2/BackupFolder

        check=/workspaces/OS-Sem2/$backupDirectory

        if [ -d "$check" ];

        then

            echo -e "\n$check directory exists\n\n"

            cp -R $check /workspaces/OS-Sem2/BackupFolder

            echo -e "\nThe contents of $backupDirectory were backed up in the BackupFolder\n\n"

            echo -e "Displaying files in the backup directory\n\n"

            echo | ls

        else

          echo -e "\n$backupDirectory does not exist\n\n"

        fi

            


    ;;

    6)
        run=0
        
    ;;

    *)
        echo -e "Invalid input please try again\n\n"
    ;;

  esac

done

exit