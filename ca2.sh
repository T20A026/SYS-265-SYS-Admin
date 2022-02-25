#!/bin/bash
openssl ca -out websrv.crt -infiles websrv.csr
scp USER@IP:websrv.crt /etc/pki/tls/certs

yum -y install mod_ssl
sudo vi /etc/httpd/conf.d/ssl.conf
CA: /etc/pki/tls/certs
PK: /etc/pki/tls/private

firewall-cmd --permanent --add-port=443/tcp
firewall-cmd --reload
systemctl restart httpd
systemctl status httpd
