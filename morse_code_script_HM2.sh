#!/bin/bash
# This script translates characters to morse code.
# It outputs "The Morse Code for the input word is" followed by the code for each inputted letter separarted by tabs.
# It requires an input of the "morse.txt" file and of an alpha numeric with spaces between each character.
# example usage: $ sh morse_code_script_HM1.sh morse.txt E M I L Y

echo "The Morse Code for the input word is"
for character in "$@"
do
	if [ $character != $1 ]
	then 
		variable=$(grep -m 1 $character $1) 
		printf "$variable \t"
	fi
done
printf "\n"
