#!/bin/bash


commands () {
    cd /var/www/html/pranala/mp-wallet-frontend-web
    . ~/.nvm/nvm.sh
    . ~/.profile
    . ~/.bashrc
    nvm use 8
    gulp
    $SHELL # keep the terminal open after the previous commands are executed
}

export -f commands

gnome-terminal --title="mp-wallet-frontend-web" --tab -e "bash -c 'commands'"
