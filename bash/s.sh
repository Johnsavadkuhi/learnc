
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

test_string 
