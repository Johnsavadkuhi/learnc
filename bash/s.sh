
#!/bin/bash

test_file(){
    
    FILE=~/.nvm 

    if [ -e "$FILE" ] ; then 
        
        echo "the $FILE is exist."

        if [ -f "$FILE" ];then 
            echo "$FILE is reqular file " 
        fi

        if [ -d "$FILE" ]; then 
            echo "$FILE is directory"
        fi 

        if [ -r "$FILE" ] ;then 
            echo "$FILE is readable"
        fi 

        if [ -x "$FILE" ];then 
            echo "$FILE is executable/searchable."
        fi 

    else 
        echo "$FILE does not exist."
        return 1 

    fi     
}


test_string(){

    answer="no"

    if [ -z "$answer" ]; then 
        echo "There is no answer." >&2 
        exit 1 
    fi 

    if [ "$answer" = "yes" ]; then 
        echo "The answer is yes "
    elif [ "$answer" = "no" ];then 
        echo "the answer is no "
    elif [ "$answer" = "maybe" ] ; then 
        echo "the answer is maybe"
    else 
        echo "The answer is unkonw"
    fi
}

# function test_number {
    
#     INT=-5 

#     if [ -z "$INT" ]; then 
#         echo "INT is empty." >&2 
#     fi 

#     if [ $INT -eq 0 ] ; then 
#         echo "INT is zero" 
#     fi 

#     else 
#         if [ $INT -lt 0 ]; then 
#             echo "INT is negative" 
#         else 
#             echo "INT is positive"
#         fi 
#         if [ $((INT%2)) -eq 0 ]; then 
#             echo "INT is even "
#         else 
#             echo "INT is odd" 
#         fi 
#     fi 

# }

int=-5 

if [[ "$int" =~ ^-?[0-9]+$ ]]; then 
    if [ $int -eq 0 ];then 
        echo "INT is zero" 
    else 
        if [ $int -lt 0 ] ; then 
            echo "INT is negative" 
        else 
            echo "Int is positive"
        fi 
        if [ $((int % 2 )) -eq 0 ];then 
            echo "INt is even"
        else 
            echo "INT is odd"
        fi 
    fi
    else 
        echo "INT is not an integer " >&2 
        exit 1  
fi 
 