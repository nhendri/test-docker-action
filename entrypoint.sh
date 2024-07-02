#!/bin/bash

function main () {
    
    local PARAM_LIST=(INPUT_ENV_VAR01 INPUT_ENV_VAR02)
    local EMPTY_PARAMS=0

    for PARAM in ${PARAM_LIST[*]}; do
        local PARAM_VALUE="${!PARAM}"
        if [[ $PARAM_VALUE == "" ]]; then
            case $PARAM in
                ENV_VAR01)
                    printf "ERROR   Required parameter $PARAM not set...\n"
                    EMPTY_PARAMS=1
                ;;
                *)
                    printf "WARNING Optional parameter $PARAM not set...\n"
                ;;
            esac
            else
                printf "INFO    Parameters are set...\n"
        fi
    done

    if [ $EMPTY_PARAMS -eq 1 ]; then
        printf "ERROR   A required parameter was not set...\n"
        exit 1
    fi

    printf "var01: $INPUT_ENV_VAR01 | var02: $INPUT_ENV_VAR02\n"
}

main
