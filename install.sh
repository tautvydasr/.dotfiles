#!/bin/bash

for catalog in *; do 
    if [[ -d $catalog && -e "$catalog/setup.sh" ]]; then
         echo $catalog
         exec "$catalog/setup.sh"
    fi
done
