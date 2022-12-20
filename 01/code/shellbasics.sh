
#! /usr/bin/bash #shebanng - tells which bash should run this shell file
# comment - this will not be executed
# ctrl + K+C to comment the selected lines
# ctrl + K+U to Uncomment the selected lines


# echo 'hello world'

# echo $BASH
# echo $BASH_VERSION
# echo 'Enter your name: '
# read name #take input from user and saved its value in a variable (name)
# echo "Hello $name"

#Prompt String
# read -p "Enter your name: " name 
# echo "Hello, $name"

#Password Input
echo "Hello all"
read -p "Enter username " username
read -sp "Enter your password " password
echo -e "\nUsername is $username and password is $password"

# echo "enter your names:"
# read firstname middlename lastname
# echo "Hello $firstname $lastname"

# Arrays - multi valued collection which is placed on after another

# echo "Enter names: "
# read -a names
# echo "The names are ${names[0]}, ${names[1]}, ${names[2]}, ${names[3]}"
# echo "${names}"


## Handling numbers
# echo "Enter random 2 numbers "
# read num1 num2
# echo $num1+$num2
# x=0
# x=$(($num1+$num2))
# echo $x
