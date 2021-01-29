#!/bin/bash
CUR_DIR=$(cd "$(dirname "${BASH_SOURCE-$0}")"; pwd)

openssl ca -selfsign -config ${CUR_DIR}/cfg/rootca.cnf -in ${CUR_DIR}/rootca/csr/rootca.csr.pem -extensions v3_ca -days 7300 -out ${CUR_DIR}/rootca/certs/rootca.cert.pem