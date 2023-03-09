#!/usr/bin/env bash

exec 2> /dev/null

trap 'error' ERR
error() {
  echo "Too many arguments, Just one is required, Try again!"
}


while  [[ true ]]; do
    clear
    echo ""
    echo -n "Enter your name ( -1 to exit ): "
    read name
    
    nameArray=("${array[@]}" $name)
    CountArgs=${#nameArray[@]}

    if (($name == -1 ));then
        break
    fi

    if [[ $(($CountArgs)) > 1 ]];then
        badcommand
        sleep 2
    elif [[ $(($CountArgs)) -eq 1 ]]; then
        echo "Greetings traveler"
        break
    fi
    
done
echo "Nice Run"
