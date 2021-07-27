#!/bin/bash

set -o errexit -o nounset -o pipefail

openssl ecparam -name secp256r1 -genkey -out secp256r1.key
openssl ecparam -name secp384r1 -genkey -out secp384r1.key
