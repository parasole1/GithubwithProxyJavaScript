#!/bin/bash

echo "Checking status code from GitHub API..."

# This request should trigger a 400 Bad Request because 'q' is empty
curl -k -i -X GET "https://api.github.com/search/repositories?q="

# This request should trigger a 401 Unauthorized if authentication is required but not provided
# curl -k -i -X GET "https://api.github.com/user"

echo "Status check completed."
