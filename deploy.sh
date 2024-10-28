#!/bin/bash
# Use lftp to mirror the local directory to the remote directory, skipping SSL verification
lftp -u "betatestrepo","tP-Db8a&Mj1l27@QXf" -e "set ssl:verify-certificate no; ftp:passive-mode no; mirror -R ./ /public_html; bye" ftp.betatestrepo.netvision.com.au
