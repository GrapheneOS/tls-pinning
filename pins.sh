#!/bin/bash

set -o errexit -o nounset -o pipefail

PINS=()
PINS+=($(openssl ec -in secp256r1.key -outform der -pubout | openssl dgst -sha256 -binary | openssl enc -base64))
PINS+=($(openssl ec -in secp384r1.key -outform der -pubout | openssl dgst -sha256 -binary | openssl enc -base64))

echo

for pin in ${PINS[@]}; do
    echo $pin
done

echo
