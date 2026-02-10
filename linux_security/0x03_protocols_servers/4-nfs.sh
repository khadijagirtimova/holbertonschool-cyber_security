#!/bin/bash
showmount -e "$1" 2>/dev/null | grep -v "Export list"
