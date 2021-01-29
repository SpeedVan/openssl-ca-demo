#!/bin/bash
CUR_DIR=$(cd "$(dirname "${BASH_SOURCE-$0}")"; pwd)

openssl x509 -noout -text -in ${CUR_DIR}/rootca/certs/rootca.cert.pem