#!/bin/bash


commands () {
    cd /var/www/html/pranala/mp-payment-page
    . ~/.nvm/nvm.sh
    . ~/.profile
    . ~/.bashrc
    nvm use 8
    gulp
    $SHELL # keep the terminal open after the previous commands are executed
}

export -f commands

gnome-terminal --title="mp-payment-page" --tab -e "bash -c 'commands'"
