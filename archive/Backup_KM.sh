#!/bin/sh
# Shell Script to Backup your Keyboard Maestro Data and Settings
# Author: Kaushik Gopal
# --------------------------------------------------------------

# Working command
# ditto -c -k --sequesterRsrc --keepParent ~/Library/'Application Support/Keyboard Maestro'/ ~/Dropbox/'Application Support/Keyboard Maestro'/`date "+KM5_backup_%Y-%m-%d_%H%M%S"`.zip

## Set the Backup path ##
bkp="Dropbox/Application Support/Keyboard Maestro"

## Set KM Source path ##
src="Library/Application Support/Keyboard Maestro"

## Preferred Date Suffix ##
filename=$(date +"KM5_backup_%Y-%m-%d_%H%M%S.zip")

# Creat a zipped bkup with dated suffix
ditto -c -k --sequesterRsrc --keepParent ~/"$src"/ ~/"$bkp"/"$filename"

## Growl the File name is successfully created ##
if [ -f ~/"$bkp"/"$filename" ]
  then
    echo "KM Backup successfully complete. Backed up at ~/$bkp/$filename";
  else 
    echo "Me no find Backup FAIL!";
fi 

## Remove backups older than your last three backups  ##
ls -t ~/"$bkp"/KM5_backup_* | awk 'NR>3 {system("rm \"" $0 "\"")}'

# The ls command lists files with the latest 2 on top
# The awk command states that for those lines (NR = number of records, i.e. lines) greater than 2, delete them
# The quote characters are needed just in case the file names have embedded spaces
# http://stackoverflow.com/questions/1426434/remove-old-backup-files