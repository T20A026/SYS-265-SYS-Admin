#!/bin/bash
echo "enter username:"
read x
echo "enter cert IP"
read y
openssl req -newkey rsa:2048 -keyout websrv.key -out websrv.csr
scp websrv.csr $x@$y:/tmp
