#!/bin/bash

# Import the Nmap library.
nmap

# Define the function to scan for vulnerabilities.
function scan_for_vulnerabilities() {
  local target_url=$1

  nmap -sV --script vuln $target_url
}

# Get the target URL from the user.
read -p "Enter the URL of the web application to scan: " target_url

# Scan the web application for vulnerabilities.
scan_for_vulnerabilities $target_url

# Display a message to the user.
echo "The web application has been scanned for vulnerabilities."
