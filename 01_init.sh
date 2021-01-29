#!/bin/bash
CUR_DIR=$(cd "$(dirname "${BASH_SOURCE-$0}")"; pwd)

CERTS_PATH=${CUR_DIR}/rootca/certs
DB_PATH=${CUR_DIR}/rootca/db
PRIVATE_PATH=${CUR_DIR}/rootca/private
CRL_PATH=${CUR_DIR}/rootca/crl
NEWCERTS_PATH=${CUR_DIR}/rootca/newcerts

# create dir certs db private crl newcerts under rootca dir.
if [ ! -d ${CERTS_PATH} ]; then
    mkdir -p ${CERTS_PATH}
fi

if [ ! -d ${DB_PATH} ]; then
    mkdir -p ${DB_PATH}
    touch ${DB_PATH}/index
    openssl rand -hex 16 > ${DB_PATH}/serial
    echo 1001 > ${DB_PATH}/crlnumber
fi

if [ ! -d ${PRIVATE_PATH} ]; then
    mkdir -p ${PRIVATE_PATH}
    chmod 700 ${PRIVATE_PATH}
fi

if [ ! -d ${CRL_PATH} ]; then
    mkdir -p ${CRL_PATH}
fi

if [ ! -d ${NEWCERTS_PATH} ]; then
    mkdir -p ${NEWCERTS_PATH}
fi