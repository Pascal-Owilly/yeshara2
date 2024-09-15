#!/bin/bash

# Check if the commit message is provided
if [ -z "$1" ]; then
  echo "Usage: ./push.sh 'update'"
  exit 1
fi

# Store the commit message
COMMIT_MESSAGE="$1"

# Add all changes to staging
git add .

# Commit changes with the provided message
git commit -m "$COMMIT_MESSAGE"

# Push changes to the remote repository
git push

# Inform the user that the push is complete
echo "Changes have been added, committed, and pushed with message: '$COMMIT_MESSAGE'"
