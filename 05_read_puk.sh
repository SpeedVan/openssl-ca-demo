#!/bin/bash
CUR_DIR=$(cd "$(dirname "${BASH_SOURCE-$0}")"; pwd)

openssl req -text -noout -in ${CUR_DIR}/rootca/csr/rootca.csr.pem