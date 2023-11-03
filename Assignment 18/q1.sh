# Write a Menu driven shell Script which will create a database for
# addressbook & functionality as below.
# From User take
# 1. Name
# 2. Email
# 3. Mobile Number
#  echo "Address Book Menu"
#  echo "------------------------------"
#  echo "1. Add a new contact"
#  echo "2. View all contacts"
#  echo "3. Search for a contact"
#  echo "4. Delete a contact"
#  echo "5. Count of contacts"
#  echo "6. Exit" 

function menu {
    echo "Address Book Menu"
    echo "------------------------------"
    echo "1. Add a new contact"
    echo "2. View all contacts"
    echo "3. Search for a contact"
    echo "4. Delete a contact"
    echo "5. Count of contacts"
    echo "6. Exit"
    echo "------------------------------"
}

function add {
    echo "Enter Name: "
    read name
    echo "Enter Email: "
    read email
    echo "Enter Mobile Number: "
    read mobile
    echo "$name: $email: $mobile" >> addressbook.txt
}

function view {
    if [ -s addressbook.txt ]
    then
        cat addressbook.txt
    else
        echo "Address Book is Empty"
    fi
}

function search {
    echo "Enter Name: "
    read name
    grep -i $name addressbook.txt
}

function delete {
    echo "Enter Name: "
    read name
    sed -i "/$name/d" addressbook.txt
    echo "Deleted Successfully"
}

function count {
    wc -l addressbook.txt
}

while true
do
    menu
    echo "Enter your choice: "
    read choice
    case $choice in
        1) add;;
        2) view;;
        3) search;;
        4) delete;;
        5) count;;
        6) exit;;
        *) echo "Invalid Choice";;
    esac
    echo "______________________________"
    echo
done



