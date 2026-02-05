#!/bin/bash
sudo useradd "$1"
echo "$2" | sudo passwd --stdin "$1"
