#!/bin/bash
john --wordlist=~/Desktop/rockyou.txt "$1" && john --show "$1" | cut -d':' -f2 > 4-password.txt
