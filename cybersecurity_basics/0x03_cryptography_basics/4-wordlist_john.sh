#!/bin/bash
john --format=raw-md5 --wordlist=~/Desktop/rockyou.txt "$1" && john --format=raw-md5 --show "$1" 2>/dev/null | grep : | cut -d: -f2 > 4-password.txt
