#!/bin/bash



<<disclaimer

This is just for infotainment purpose

disclaimer

function is_loyal() {

read -p "$1 said his wife name: " bandi
read -p "$1 ki loyalty  %: " loyalty

if [[ $bandi == "daya bhabhi" ]];
then
	echo "$1 is loyal."
elif [[ $loyalty -ge 100  ]];
then
	echo "$1 is loyal."
else
	echo "$1 is cheater."
fi
}

#This calling tha function

is_loyal "tom"
