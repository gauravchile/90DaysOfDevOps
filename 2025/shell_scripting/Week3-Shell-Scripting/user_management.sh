#!/bin/bash
# ------------------------------------------------------------
# User Management Script
# Provides options to create, delete, reset password, and list users.
# ------------------------------------------------------------

show_help() {
    echo "Usage: $0 [OPTION]"
    echo ""
    echo "Options:"
    echo "  -c, --create    Create a new user"
    echo "  -d, --delete    Delete an existing user"
    echo "  -r, --reset     Reset password of an existing user"
    echo "  -l, --list      List all users with UID"
    echo "  -h, --help      Display this help message"
    echo ""
    exit 0
}

create_user() {
    read -p "Enter new username: " username
    if id "$username" &>/dev/null; then
        echo "User '$username' already exists. Aborting."
        exit 1
    fi

    read -s -p "Enter password: " password
    echo
    sudo useradd -m "$username"
    echo "$username:$password" | sudo chpasswd
    echo " User '$username' created successfully."
}

delete_user() {
    read -p "Enter username to delete: " username
    if ! id "$username" &>/dev/null; then
        echo "User '$username' does not exist."
        exit 1
    fi

    sudo userdel -r "$username"
    echo "🗑️ User '$username' deleted successfully."
}

reset_password() {
    read -p "Enter username to reset password: " username
    if ! id "$username" &>/dev/null; then
        echo "User '$username' does not exist."
        exit 1
    fi

    read -s -p "Enter new password: " password
    echo
    echo "$username:$password" | sudo chpasswd
    echo "Password for '$username' reset successfully."
}

list_users() {
    echo "All system users:"
    awk -F: '{print $1 " (UID: " $3 ")"}' /etc/passwd
}

# Handle command-line options
case "$1" in
    -c|--create) create_user ;;
    -d|--delete) delete_user ;;
    -r|--reset) reset_password ;;
    -l|--list) list_users ;;
    -h|--help|*) show_help ;;
esac

