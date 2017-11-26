#!/bin/bash

for catalog in *; do 
    if [[ -d $catalog && -e "$catalog/setup.sh" ]]; then
         echo $catalog
         ./"$catalog"/setup.sh
    fi
done
