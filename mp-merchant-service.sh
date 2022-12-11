#!/bin/bash


commands () {
    cd /var/www/html/pranala/mp-merchant-service
    . ~/.nvm/nvm.sh
    . ~/.profile
    . ~/.bashrc
    nvm use 8
    nodemon
    $SHELL # keep the terminal open after the previous commands are executed
}

export -f commands

gnome-terminal --title="mp-merchant-service" --tab -e "bash -c 'commands'"
