#!/bin/bash

confirm() {
    read -p "$1? (y/n): " response;
    if [[ $response == 'y' ]]; then
        return 0;
    fi

    return 1;
}

