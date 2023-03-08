#!/usr/bin/env bash

echo "Hello World"

nombre="Emmanuel "; apellidos="Torres Malena waos"

echo $nombre; echo $apellidos

echo "${nombre}"
echo "${apellidos/waos/lit}"

//string length
echo "The length of apellidos is ${#apellidos}"

waos=(phone laptop nails very gud) #array

echo "${waos[1]}" #->pp
echo "${waos[@]}" #everything of the array with @

echo "${#waos[@]}" # length of the array

echo "${waos[@]:3:2}" #slicing operator

#for loop

for item in "${array[@]}"; do
    echo "$item"
done

echo {1..10} # -> 1 2 3 4 5 6 7 8 9 10
echo {a..z} # ->a b c d e f g h i j k l m n o p q r s t u v w x y z

from=1
to=10
echo {$from..$to}

echo "what's your name?"
read name

echo "hello, $name!"

#conditionals statements
if [[ "$name" != "$USER" ]]; then
    echo "Your name isn't your username"
else
    echo "Your name is your username"
fi

#conditional statements always end with fi

echo "enter su edad"
read age
if [[ "$name" == "Steve" ]] && [[ "$age" -eq 15 ]]; then
    echo "This will run if $name is Steve AND $age is 15."
fi

if [[ "$name" == "Daniya" ]] || [[ "$name" == "Zach" ]]; then
    echo "This will run if $name is Daniya OR Zach."
fi

# There are other comparison operators for numbers listed below:
# -eq - equal
# -ne - not equal
# -lt - less than
# -gt - greater than
# -le - less than or equal to
# -ge - greater than or equal to

#conditional execution
echo "Always executed" || echo "only Executed if first command fails"
echo "always executed" && echo "only executed if first command doesn't fail"


sleep 5

jobs #lists background job
fg #bring the background job to the foreground
bg #resume a backgroun job after being paused with ctrl-z
kill %2 #kills job number 2

#we can use %n afer fg, bg or kill to referentiate a job


sleep 5


#loops 

#python loop xd, or foreach in everything else
for xd in {1..3}
do
    echo $xd
done

sleep 3

#normal for
for ((a=1; a <= 3; a++))
do 
    echo $a
done

sleep 3

#we can use for loop to iterate through files

#for lines in file1 file2

#cat function = reads and prints a file or directory


while loop
count=0
while [ true ]
do 
    count=$((count + 1))
    echo "yo"
    read amogus
    if [[$count == 5] && [$amogus == "yo"]]
        sleep 3
        break
done


sleep 1


ls #Creates a list with all the files and subdirectories contained in the current directory 
ls-l #adds a \n
ls -t #sorts the directory contents by date (descending)
ls -r #recursively 'ls' the directory and all of its subdirectories

cd ~ #chande to home directory
cd  #goes to home directory
cd .. #go up one directory
cd - #go to the last directory
pwd #shows the current directory

mkdir pepe #creates a new directory pepe


#functions
function bababooey ()
{
    echo "Arguments work just like scripts arguments: $@"
    echo "And: $1 $2..."
    echo "This is a function"
    returnValue=0
    return $returnValue
}

bababooey arg1 arg2

#Its the same as
bar ()
{
    echo "The same stuff as the other one"
    return 0
}

#usefull functions

tail -n 10 file.txt #prints last 10 lines on a file
head -n 10 file.txt #prints first 10 lines on a file
sort file.txt #sorts the lines

help #It gives me the whole palette of flags that a function has
