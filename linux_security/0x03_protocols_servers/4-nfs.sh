#!/bin/bash
showmount -e localhost 2>/dev/null | grep -v "Export list"
