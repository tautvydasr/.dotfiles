#!/bin/bash

is_mac() {
    if [[ $OSTYPE == *"darwin"* ]]; then
        return 0;
    fi

    return 1;
}

is_linux() {
    if [[ $OSTYPE == *"linux"* ]]; then
        return 0;
    fi

    return 1;
}

