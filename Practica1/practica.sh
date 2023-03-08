#!/usr/bin/env bash

#Numero aleatorio del 1 al 10
num_random=$(( 1 + RANDOM % 10 ))
#echo $num_random
attempt=5
clear

#Juego
while [ true ]
do
    echo "---------------- Guess the Number ----------------"
    echo "Enter a number from 1 to 10: "
    read choice

    if [[ "$num_random" -eq "$choice" ]]; then
        echo "Congrats!!! You won the Game"
        sleep 2
        clear

        echo "Would you like to play again? (S/n)"
        read again

        if [[ "$again" -eq "S" ]]; then
            attempt=5
            num_random=$(( 1 + RANDOM % 10 ))
            clear

        else
            echo "See you next time!"
            Sleep 2
            break
        fi

    else
        let attempt=attempt-1

        echo "Thats a wrong number! Keep trying"
        echo "Attempts left: "$attempt
        echo ""

        if [[ "$attempt" -le 0 ]]; then
            printf "\n"
            echo "Game Over! You are pretty bad at this!"
            sleep 2
            clear
            
            echo "Would you like to try again? (S/n)"
            read again

            if [[ "$again" -eq "S" ]]; then
                attempt=5
                num_random=$(( 1 + RANDOM % 10 ))
                clear
                
            else
                echo "See you next time!"
                Sleep 2
                break
            fi
        fi
    fi
    sleep 2
    clear
done