#!/bin/bash

# Script Name:                  ops201-challenged13-domain-analyzer
# Author:                       julian pena
# Date of latest revision:      03/19/2024
# Purpose:                      domain analyzer

# Declaration of variables
output_file="domain_analysis.txt"

# Declaration of functions
run_whois() {
    echo -e "\nWHOIS information for $domain" >> "$output_file"
    whois "$domain"
}

run_dig() {
    echo -e "\nDIG information for $domain" >> "$output_file"
    dig "$domain"
}

run_host() {
    echo -e "\nHOST information for $domain" >> "$output_file"
    host "$domain"
}

run_nslookup() {
    echo -e "\nNSLOOKUP information for $domain" >> "$output_file"
    nslookup "$domain"
}

# Main
read -p "Please enter a domain name: " domain

if [ -z "$domain" ]; then
    echo "No domain name provided. Exiting."
    exit 1
fi

# Run functions
run_whois
run_dig
run_host
run_nslookup

echo "Domain analysis saved to $output_file"
