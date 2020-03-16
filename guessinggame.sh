#! /usr/bin/bash
################################################################################
#
# Created By	: Soumya Patil
#
# Created Date  : March 10 2020
#
# Purpose   	: Unix 201 project
#
#
###############################################################################

guess() 
{	
	filecount=`ls -la | grep ^- | wc -l` #only including the hidden files and regular files
	echo "Please guess how many files are present in this directory:"
	read response	
	num_test='^[+-]?[0-9]+$' # Represents a signed natural number
	
	#Checking whether the entered number is natural number or not
	if [[ $response =~ $num_test ]];then # if - 1
		while [[ $response -ne $filecount ]]
		do
			if [[ $response -gt $filecount ]]
			then
				echo "Please enter some lesser value: \c "
			else 
				echo "Please enter some greater value: \c "
			fi 	
			read response
		done	
		echo "Congratulations you have entered correct Number!!"
	else
		echo "You have entered an invalid number(other than natural number). Exiting from the program"
		exit 1
	fi # if - 1
}

# calling function
guess
