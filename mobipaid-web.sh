#!/bin/bash


commands () {
    cd /var/www/html/pranala/mobipaid-web
    . ~/.nvm/nvm.sh
    . ~/.profile
    . ~/.bashrc
    nvm use 14
    gulp dev
    $SHELL # keep the terminal open after the previous commands are executed
}

export -f commands

gnome-terminal --title="Mobipaid-web" --tab -e "bash -c 'commands'"
