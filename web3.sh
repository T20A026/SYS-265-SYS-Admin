#!/bin/bash
websrv.crt -> /etc/pki/tls/certs
websrv.key -> /etc/pki/tls/private
yum -y install mod_ssl
vi /etc/httpd/conf.d/ssl.conf
firewall-cmd --add-port=443/tcp --permanent
firewall-cmd --reload
systemctl restart httpd
