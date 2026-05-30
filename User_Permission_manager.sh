#!/bin/bash
clear

echo "                                                         "
echo "           USER & PERMISSION MANAGEMENT SYSTEM           "
echo " "

echo -n "Enter the username: "
read username

if  id "$username" &>/dev/null
then
    if userdel -r "$username"
    then
        echo "User removed successfully"
    else
        echo "Can't remove user"
    fi
else
    echo "User doesn't exist"
fi

echo -n "Enter the groupname: "
read groupname

if getent group $groupname &>/dev/null
then 
    echo "Group already exist"
else
    groupadd "$groupname"
    echo "Group created successfully"
fi