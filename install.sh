#!/bin/bash

for catalog in *; do 
    if [[ -d $catalog && -e "$catalog/setup.sh" ]]; then
         ./"$catalog"/setup.sh
    fi
done

