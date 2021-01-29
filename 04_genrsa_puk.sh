#!/bin/bash
CUR_DIR=$(cd "$(dirname "${BASH_SOURCE-$0}")"; pwd)



PROJ_ROOT=${CUR_DIR} openssl req -new -config ${CUR_DIR}/cfg/rootca.cnf -sha256 -key ${CUR_DIR}/rootca/private/rootca.key.pem -out ${CUR_DIR}/rootca/csr/rootca.csr.pem