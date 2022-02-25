#!/bin/bash
echo "did you edit me?"
cd /tmp
openssl ca -out websrv.crt -infiles websrv.csr
scp websrv.crt user@WS_IP:/desired/file/path
