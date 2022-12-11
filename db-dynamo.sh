#!/bin/bash


commands () {
    cd /home/agung/Downloads/dynamodb_local_latest
    . ~/.nvm/nvm.sh
    . ~/.profile
    . ~/.bashrc
    java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -dbPath My_db -port 8009
    $SHELL # keep the terminal open after the previous commands are executed
}

export -f commands

gnome-terminal --title="dynamo db" --tab -e "bash -c 'commands'"
