#!/bin/bash
if [ "$(sha256sum "$1" | cut -d' ' -f1)" = "$2" ]; then echo OK; else echo FAIL; fi
