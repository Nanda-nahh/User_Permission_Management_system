#!/bin/bash
clear

while true
do

echo "                                                         "
echo "           USER & PERMISSION MANAGEMENT SYSTEM           "
echo ""

echo "1. Create the user: "
echo "2. Delete the user: "
echo "3. Create the group: "
echo "4. Delete the group: "
echo "5. Add user to group: "
echo "6. Lock the user: "
echo "7. Unlock the user: "
echo "8. Exit"
echo ""

echo -n "Enter your choice: "
read choice

case $choice in

1)
    echo -n "Enter the username: "
    read username

    if id "$username" &>/dev/null
    then
        echo "User exist"
    else
        useradd "$username" && echo "user added successfully"
    fi
    ;;
2)
    echo -n "Enter the username: "
    read username
    if id "$username" &>/dev/null
    then
        userdel -r "$username" && echo "User successfully deleted"
    else
        echo "user does not exist"
    fi
    ;;

3)
    echo -n "Enter the groupname: "
    read groupname
    if getent group "$groupname" &>/dev/null
    then
        echo "Group exist"
    else
        groupadd "$groupname" && echo "group added successfully"
    fi
    ;;


4)
    echo -n "Enter the groupname: "
    read groupname
    if getent group "$groupname" &>/dev/null
    then
        groupdel "$groupname" && echo "Group successfully deleted"
    else
        echo "group does not exist"
    fi
    ;;


5)
    echo -n "Enter the username: "
    read username
    if id "$username" &>/dev/null
    then
        echo -n "Enter the groupname: "
        read groupname
        if getent group "$groupname" &>/dev/null
        then
            usermod -aG "$groupname" "$username" && echo "User added to group"
        else
            echo "Group does not exit"
        fi
    else
        echo "User does not exist"
    fi
    ;;

6)
    echo -n "Enter the username: "
    read username
    if id username &>/dev/null
    then
        usermod -L "$username" && echo "User successfully locked"
    else
        echo "User doesn't exist"
    fi
    ;;  
7)  
    echo -n "Enter the username: "
    read username
    if id "$username" &>/dev/null
    then
        usermod -U "$username" && echo "User successfully unlocked"
    else
        echo "User doesn't exist"
    fi
    ;;  

8)  echo -n "Exiting"
    exit 0
    ;;

esac

echo
done