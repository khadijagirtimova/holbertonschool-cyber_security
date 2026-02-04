#!/bin/bash
echo -n "$1$(openssl rand -base64 12)" | openssl sha512 | cut -d' ' -f2 > 3_hash.txt
