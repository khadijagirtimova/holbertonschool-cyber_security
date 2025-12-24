#!/bin/bash
whois Registrant Admin "$1" | awk -F': ' 
