#!/usr/bin/env bash

#Numero aleatorio
num_random=$(( 1 + RANDOM % 10 ))
#echo $num_random
try=5

#Juego
while [ true ]
do
    echo "---------------- Guess the Number ----------------"
    echo "Enter a number from 1 to 10: "
    read choice

    if [[ "$num_random" == "$choice" ]]; then
        echo "Congrats!!! You won the Game"
        sleep 2
        break

    else
        echo "Thats a wrong number! Keep trying"
        let try=try-1
        if [[ "$try" -le 0 ]]; then
            printf "\n"
            echo "Game Over! You are pretty bad at this!"
            sleep 2
            break
        fi

    fi
    
done