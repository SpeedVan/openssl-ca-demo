#!/bin/bash
CUR_DIR=$(cd "$(dirname "${BASH_SOURCE-$0}")"; pwd)

# openssl rsa -in ${CUR_DIR}/rootca/private/rootca.key.pem
openssl rsa -text -noout -in ${CUR_DIR}/rootca/private/rootca.key.pem