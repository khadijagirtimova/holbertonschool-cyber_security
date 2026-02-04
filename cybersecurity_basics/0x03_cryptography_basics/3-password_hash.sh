#!/bin/bash
echo -n "$1" | sha512sum | cut -d' ' -f1 > 3_hash.txt
