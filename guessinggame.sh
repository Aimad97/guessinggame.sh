#!/bin/bash


get_file_count() {
    echo $(ls -1 | wc -l)
}


ask_guess() {
    read -p "Guess how many files are in the current directory: " guess
}


echo "Welcome to the Guess the Number of Files Game!"

file_count=$(get_file_count)
guess=-1

while [ "$guess" -ne "$file_count" ]; do
    ask_guess
    
    if [ "$guess" -lt "$file_count" ]; then
        echo "Your guess is too low. Try again."
    elif [ "$guess" -gt "$file_count" ]; then
        echo "Your guess is too high. Try again."
    else
        echo "Congratulations! You guessed the correct number of files: $file_count"
    fi
done
