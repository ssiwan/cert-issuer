#!/bin/bash

set -e

FILE="~/.bitcoin/testnet3/.lock"

if [ -f $FILE]; then
    rm $FILE
fi

exec "$@"
