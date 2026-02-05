#!/bin/bash
john --format=raw-sha256 --wordlist=~/Desktop/rockyou.txt "$1" && john --format=raw-sha256 --show "$1" 2>/dev/null | grep : | cut -d: -f2 > 6-password.txt
