#!/bin/bash

function get_guess() {
  local guess
  while [[ -z $guess ]]
    do
    read -p "How many files are in the current directory? " guess
    if [[ $((guess)) != $guess ]]
    then
      echo "Please enter a non-negative integer"
      guess=
    fi
  done
  echo ${guess}
}

function get_file_count() {
  echo $(ls -1 | wc -l)
}

file_count=$(get_file_count)
current_guess=$(get_guess)
tries=$(( ${tries} + 1 ))
while [[ ${current_guess} -ne ${file_count} ]]
do
    if [[ ${current_guess} -lt ${file_count} ]]
    then
        echo "you guessed too high"
    else
        echo "you guessed to low"
    fi
    current_guess=$(get_guess)
    tries=$(( ${tries} + 1 ))
done
echo "Congratulations! You correclty guessed ${files} files after only ${tries} tries."

