 #!/bin/bash

# Script Name:                  ops201-challenged06-conditionals
# Author:                       julian pena
# Date of latest revision:      03/15/2024
# Purpose:                      conditionals 
# resources:                    https://chat.openai.com/c/57b212f9-3fdd-4b59-8d62-cf26f5eeef53

# Declaration of variables
#!/bin/bash

files=("file1" "file2" "file3" "file4")

while true; do 
    read -p "Enter a file to check if it exists or type 'done': " file
    if [ "$file" = "done" ]; then
        break 
    fi 

    if [ -e "$file" ]; then 
        echo "$file exists"
    else 
        read -p "$file does not exist, do you want to create it? (yes/no) " add_item 
        if [ "$add_item" = "yes" ]; then
            touch "$file"
            files+=("$file")
            echo "$file added to files"
        else
            echo "$file has not been added to files"
        fi
    fi
done



# Declaration of functions


# Main



# End