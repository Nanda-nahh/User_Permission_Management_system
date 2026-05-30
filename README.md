# User & Permission Management System

A menu-driven Bash script for managing Linux users and groups. This project was developed as part of a Linux System Administration learning roadmap and demonstrates core user and group management tasks commonly performed by Linux administrators.

## Features

### User Management

* Create User
* Delete User
* Lock User Account
* Unlock User Account

### Group Management

* Create Group
* Delete Group
* Add User to Group

### Menu-Driven Interface

* Interactive command-line menu
* Input validation
* User-friendly output messages

## Technologies Used

* Bash Shell Scripting
* Linux User Management Commands
* Linux Group Management Commands

## Commands Used

### User Management

```bash
useradd
userdel
usermod
id
```

### Group Management

```bash
groupadd
groupdel
getent
```

### Account Security

```bash
usermod -L
usermod -U
```

## Project Structure

```text
user-permission-management-system/
│
├── User_Permission_manager.sh
├── README.md

```

## How to Run

Make the script executable:

```bash
chmod +x User_Permission_manager.sh
```

Run the script:

```bash
./User_Permission_manager.sh
```

## Menu Options

```text
1. Create User
2. Delete User
3. Create Group
4. Delete Group
5. Add User to Group
6. Lock User
7. Unlock User
8. Exit
```

## Learning Outcomes

Through this project, I gained hands-on experience with:

* Linux user administration
* Linux group administration
* User account security
* Bash scripting fundamentals
* Conditional statements
* Loops and menu systems
* Case statements
* Linux command-line administration

## Future Improvements

* Password management
* User information reports
* Account expiry management
* Permission management (chmod, chown, chgrp)
* Activity logging
* Error logging

## Author

Nandana Mohan J

Linux System Administration & DevOps Learner
