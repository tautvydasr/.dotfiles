#!/bin/bash

export_to_path() {
    DIR=$1
    if [ -d "$DIR" ] && [[ ":$PATH:" != *":$DIR:"* ]]; then
        export PATH=$PATH:$DIR
    fi    
}

