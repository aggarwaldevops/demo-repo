#!/bin/bash

# FTP server details
FTP_HOST="ftp.betatestrepo.netvision.com.au"
FTP_USERNAME="betatestrepo"
FTP_PASSWORD="tP-Db8a&Mj1l27@QXf"
LOCAL_DIR="./"
REMOTE_DIR="/public_html"

# Print debug information
echo "FTP_HOST: $FTP_HOST"
echo "FTP_USERNAME: $FTP_USERNAME"
echo "LOCAL_DIR: $LOCAL_DIR"
echo "REMOTE_DIR: $REMOTE_DIR"

# Use lftp to mirror the local directory to the remote directory, skipping SSL verification
lftp -d -c "
set ssl:verify-certificate no;
open -u $FTP_USER,$FTP_PASSWORD $FTP_SERVER;
mirror -R --verbose --only-newer --parallel=10 $LOCAL_DIR $REMOTE_DIR;
bye;
"
