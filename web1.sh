#!/bin/bash
yum install -y httpd
firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --reload
firewall-cmd --query-port=80/tcp
