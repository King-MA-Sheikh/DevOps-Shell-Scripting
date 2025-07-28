#!/bin/bash

# GitHub Repository URL
REPO_URL="https://github.com/King-MA-Sheikh/DevOps-Shell-Scripting.git"
BRANCH="main"  # Change to "master" if your repo uses it

# Step 1: Initialize Git (if not already)
if [ ! -d ".git" ]; then
    echo "Initializing Git repository..."
    git init
fi

# Step 2: Add all files to staging
echo "Adding files to staging..."
git add .

# Step 3: Commit changes
read -p "Enter your commit message: " COMMIT_MSG
git commit -m "$COMMIT_MSG"

# Step 4: Link to GitHub (if not already)
if ! git remote | grep -q "origin"; then
    echo "Setting remote origin to $REPO_URL"
    git remote add origin "$REPO_URL"
fi

# Step 5: Push to GitHub
echo "Pushing to GitHub..."
git push -u origin "$BRANCH"

# Check if push was successful
if [ $? -eq 0 ]; then
    echo "✅ Successfully pushed to GitHub!"
else
    echo "❌ Push failed. Check your remote URL or authentication."
    echo "Tip: If using HTTPS, ensure you have a GitHub Personal Access Token (PAT)."
fi
