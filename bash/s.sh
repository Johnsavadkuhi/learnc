
#!/bin/bash

test_file(){
    
    FILE=~/.bashrc 

    if [ -e "$FILE" ] ; then 
        if [ -f "$FILE" ];then 
            echo "$FILE is reqular file " 
        fi
    fi     
}


test_file 