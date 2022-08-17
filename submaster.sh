#! /usr/bin/bash

figlet -f slant SUB MASTER | lolcat

echo "                                   Created by TheDarkFever" | lolcat

echo "1. Enumerating Sub-Domians"

assetfinder $1 >  $1_subdomains.txt

echo "2. Sub-Domain Enumeration Completed"

echo "3. Attacking Sub-domains"

subzy -targets $1_subdomains.txt >  $1_takeovers.txt

echo "--Analyse the results--"
cat $1_takeovers.txt | grep "VULNERABLE"

