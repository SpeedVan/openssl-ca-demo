#!/bin/bash
CUR_DIR=$(cd "$(dirname "${BASH_SOURCE-$0}")"; pwd)

openssl genrsa -aes256 -out ${CUR_DIR}/rootca/private/rootca.key.pem 4096