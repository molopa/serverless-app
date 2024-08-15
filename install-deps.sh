#!/bin/bash

list=($(ls))
for f in "${list[@]}"
	do
		if   [ -d "$f" ]
		then echo "$f is a directory";
			cd $f
			if   [ -f "requirements.txt" ]
			then
				pip3 install -r requirements.txt --disable-pip-version-check;
			else
				echo "No requirements file";
			fi
			cd ..;
		fi
	done