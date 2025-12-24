#!/bin/bash
whois $1 | awk -F': ' 'BEGIN {OFS=","} /Registrant|Admin|Tech/ {if ($1 ~ /Street/) $2=$2" "; if ($1 ~ /Ext/) $1=$1":"; print $1,$2}' | sed '$d' | awk '{ORS=NR==1?"":RS; print (NR==1?"":prev)} {prev=$0} END {printf "%s", prev}'
