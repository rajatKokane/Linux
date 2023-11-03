#!/bin/bash

function menu {
    echo "File and Directory Operations Menu"
    echo "-----------------------------------------------------------"
    echo "1. List files and directories in the given path"
    echo "2. Display information about a file or directory"
    echo "3. Create a directory"
    echo "4. Create a file"
    echo "5. Copy a file or directory"
    echo "6. Move/Rename a file or directory"
    echo "7. Delete a file or directory"
    echo "8. Exit"
    echo "-----------------------------------------------------------"
}

function list {
    echo "Enter path: "
    read path
    ls $path
}

function info {
    echo "Enter path: "
    read path
    ls -l $path
}

function create_dir {
    echo "Enter path: "
    read path
    echo "Enter directory name: "
    read name
    mkdir $path/$name
}

function create_file {
    echo "Enter path: "
    read path
    echo "Enter file name: "
    read name
    echo "Enter contents: "
    read contents
    echo $contents > $path/$name
}

function copy {
    echo "Enter source path: "
    read source
    echo "Enter destination path: "
    read destination
    cp -r $source $destination
}

function move {
    echo "Enter source path: "
    read source
    echo "Enter destination path: "
    read destination
    mv $source $destination
}

function delete {
    echo "Enter path: "
    read path
    rm -r $path
}

while true
do
    menu
    echo "Enter your choice: "
    read choice
    case $choice in
    1) list ;;
    2) info ;;
    3) create_dir ;;
    4) create_file ;;
    5) copy ;;
    6) move ;;
    7) delete ;;
    8) exit ;;
    *) echo "Invalid choice"
    esac
done
