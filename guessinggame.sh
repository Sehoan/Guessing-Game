#!/usr/bin/env bash 
# File: guessinggame.sh

answer=$(ls | wc -l)
correct=0

function guessed_correct {
    echo "Congrats, you are correct!!"
    let correct=1
}

function guessed_wrong {
    if [[ $number_files -gt $answer ]]
    then
        echo "the answer is less than your guess, try again"
    else
        echo "the answer is greater than your guess, try again"
    fi

}

while [[ $correct -eq 0 ]]
do
    echo "Guess how many files are in the current directory: "
    read number_files

    if [[ $number_files -eq $answer ]]
    then
        guessed_correct
    else
        guessed_wrong
    fi
done
