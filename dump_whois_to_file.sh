#!/bin/bash

print_help() {
    printf "First arg:\tDOMAIN NAME\n"
    printf "EXAMPLE:\tFacebook\n\n"
    printf "Second arg:\tTLD\n"
    printf "EXAMPLE:\tcom\n"
}

check_args() {
    if [ $1 -lt 2 ]; then
        printf "Need two args\n\n"
        print_help
        exit
    fi
}

check_args $#

whois $1.$2 > whois_responses/$1_whois.txt
