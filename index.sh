#!/bin/bash


commands () {
    # killall node
    cd /home/Desktop
    ./mobipaid-web.sh   
    ./mp-merchant-service.sh 
    ./mp-payment-page.sh 
    ./mp-payment-page-2.sh 
    ./mp-payment-page-api.sh 
    ./mp-wallet-frontend-web.sh 
    ./mp-wallet-api.sh 
    ./db-dynamo.sh 
}

export -f commands

gnome-terminal --tab -e "bash -c 'commands'"
