#!/bin/bash

set -o errexit

openssl genrsa -out rsa2048.key 2048
openssl genrsa -out rsa3072.key 3072
openssl genrsa -out rsa4096.key 4096
openssl ecparam -name secp256r1 -genkey -out secp256r1.key
openssl ecparam -name secp384r1 -genkey -out secp384r1.key
