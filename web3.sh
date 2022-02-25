#!/bin/bash
echo websrv.crt -> /etc/pki/tls/certs
echo websrv.key -> /etc/pki/tls/private
echo yum -y install mod_ssl
echo vi /etc/httpd/conf.d/ssl.conf
echo firewall-cmd --add-port=443/tcp --permanent
echo firewall-cmd --reload
echo systemctl restart httpd
