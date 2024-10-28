#!/bin/bash
# Use lftp to mirror the local directory to the remote directory, skipping SSL verification
lftp -u "betatestrepo","tP-Db8a&Mj1l27@QXf" -e "set ssl:verify-certificate no; set ftp:passive-mode no; set net:timeout 5; set debug 3; mirror -R ./ /public_html; bye" ftp.betatestrepo.netvision.com.au
