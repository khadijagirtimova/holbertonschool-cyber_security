#!/bin/bash
grep -q "^smtpd_tls_security_level=may\|^smtpd_use_tls=yes" /etc/postfix/main.cf 2>/dev/null || echo "STARTTLS not configured"
