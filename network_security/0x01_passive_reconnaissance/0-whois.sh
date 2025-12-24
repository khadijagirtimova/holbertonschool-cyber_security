#!/bin/bash
whois Registrant "$1" | awk -F': ' 
