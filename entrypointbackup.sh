#!/bin/bash

set -e

FILE="/.bitcoin/testnet3/.lock"

ls -la /.bitcoin/testnet3

if [ -f $FILE ]; then
    echo "Found lock. Deleting.."
    rm $FILE
else
    echo "Did not find lock."
fi


exec "$@"
