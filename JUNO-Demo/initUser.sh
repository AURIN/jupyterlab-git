#!/bin/bash
USER_NAME="umerJuno"

if [ ! -d "./$USER_NAME" ]; then #create a brand new repo and directory
	echo "Starting GitHub setup for $USER_NAME"
	mkdir "./$USER_NAME"
	cd "./$USER_NAME"
	pip install PyGithub
	git init
	touch README.md
	echo "Repo created using JUNO" >> README.md
	git add .
	git commit -m "First commit via JUNO"
	gitUrl=`python ../gitInit.py "create" $USER_NAME`
	echo "created $gitUrl" 
	git remote add origin  $gitUrl
	git push -u origin master
else #directory and repo already exist, so pull down the latest contents
	#TO-DO add functionality to sync already existing contents
	cd "$USER_NAME"
	git init
	echo "Pulling latest changes $USER_NAME"
	git pull --rebase
fi
