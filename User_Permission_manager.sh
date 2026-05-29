#!/bin/bash
clear

echo "                                                         "
echo "           USER & PERMISSION MANAGEMENT SYSTEM           "
echo " "

echo -n "Enter the username: "
read username

if  id "$username" &>/dev/null
then

    echo "user already exist"
else
    useradd "$username"
    echo "user created successfully"
fi