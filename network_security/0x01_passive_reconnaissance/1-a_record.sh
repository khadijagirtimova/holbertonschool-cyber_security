#!/bin/bash
echo $(nslookup -type=A "$1" | awk '/^Address: / {print $2}')
