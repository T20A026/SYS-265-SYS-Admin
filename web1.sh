#!/bin/bash
yum install -y httpd
firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --reload
firewall-cmd --query-port=80/tcp
openssl req -newkey rsa:2048 -keyout websrv.key -out websrv.csr
scp USER@IP:websrv.csr /home/USER
