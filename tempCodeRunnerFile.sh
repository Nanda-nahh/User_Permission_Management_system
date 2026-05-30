echo -n "Enter the groupname: "
read groupname

if getent group $groupname &>/dev/null
then 
    echo "Group already exist"
else
    groupadd "$groupname"
    echo "Group created successfully"
fi