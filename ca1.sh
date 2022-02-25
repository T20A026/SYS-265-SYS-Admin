#!/bin/bash
cd etc/pki/CA
touch index.txt
echo 1000 > serial
openssl genrsa -des3 -out private/cakey.pem 2048
openssl req -new -x509 -days 365 -key private/cakey.pem -out cacert.pem
