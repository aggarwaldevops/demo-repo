#!/bin/bash

# FTP server details
FTP_HOST=$1
FTP_USERNAME=$2
FTP_PASSWORD=$3
LOCAL_DIR=$4
REMOTE_DIR=$5

# Print debug information
echo "FTP_HOST: $FTP_HOST"
echo "FTP_USERNAME: $FTP_USERNAME"
echo "LOCAL_DIR: $LOCAL_DIR"
echo "REMOTE_DIR: $REMOTE_DIR"

# Use lftp to mirror the local directory to the remote directory, skipping SSL verification
lftp -u "${{ secrets.FTP_USERNAME }}","${{ secrets.FTP_PASSWORD }}" "${{ secrets.FTP_SERVER }}" <<EOF
set ftp:ssl-allow no
mirror -R ./ /public_html  # Change this to your target directory
EOF
