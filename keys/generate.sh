#!/bin/bash

SUBJECT="/C=CA/ST=Ontario/L=Ottawa/O=Pwnna/OU=Pwnna/CN=PwnnaOS/emailAddress=pwnna@fastmail.com"
KEYS_DIR=vendor/extra/keys

for x in releasekey platform shared media networkstack; do
  development/tools/make_key $KEYS_DIR/$x "$SUBJECT"
done

for c in cyngn{-priv,}-app testkey; do
  for e in pk8 x509.pem; do
    ln -s releasekey.$e "$KEYS_DIR/$c.$e" 2> /dev/null
  done
done
