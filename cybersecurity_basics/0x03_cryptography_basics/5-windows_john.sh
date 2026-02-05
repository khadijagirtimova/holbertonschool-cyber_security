#!/bin/bash
john --format=NT --wordlist=~/Desktop/rockyou.txt "$1" && john --format=NT --show "$1" 2>/dev/null | grep : | cut -d: -f2 > 5-password.txt
