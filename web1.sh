#!/bin/bash
echo yum install -y httpd
echo firewall-cmd --permanent --add-port=80/tcp
echo firewall-cmd --reload
echo firewall-cmd --query-port=80/tcp
