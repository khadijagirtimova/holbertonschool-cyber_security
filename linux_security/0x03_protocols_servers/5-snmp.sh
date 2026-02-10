#!/bin/bash
grep -E "^\s*rocommunity\s+public|^\s*com2sec\s+.*public" /etc/snmp/snmpd.conf 2>/dev/null
