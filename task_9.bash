#!/bin/bash


IFS=":"


while read -r username password uid gid info home shell; do

    user_info=$(grep -E "^${username}:" /etc/passwd | cut -d: -f5)


    id_info=$(grep -E "^${username}:" /etc/passwd | cut -d: -f6)


    echo "The user $username is part of the $gid gang, lives in $home and rides $shell. User ID's place is protected by the passcode $password, more info about the user here: $id_info"

done < /etc/passwd

borgiramzi
