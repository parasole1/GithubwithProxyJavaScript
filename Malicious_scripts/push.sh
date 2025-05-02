#!/bin/bash

echo "Marking repository as safe..."
git config --global --add safe.directory "$GITHUB_WORKSPACE"

echo "Setting up Git user..."
git config user.name "ir-paras-oli"
git config user.email "paras.oli@invisirisk.com"

echo "Making changes (creating a file)..."
echo "Some new content" > new6-file.txt
git add new6-file.txt
git commit -m "Add a new file"

echo "Pushing changes to the STAGE branch..."
git remote set-url origin https://x-access-token:${{ secrets.GITHUB_TOKEN }}@github.com/${{ github.repository }}.git
git push origin STAGE
