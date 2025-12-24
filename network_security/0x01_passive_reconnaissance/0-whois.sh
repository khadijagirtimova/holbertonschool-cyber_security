#!/bin/bash
whois Registrant Admin Tech $1 | awk -F': ' 
