#!/bin/bash

# Helper script to push to GitHub

echo "======================================"
echo "  Pushing to GitHub..."
echo "======================================"
echo ""

# Check if remote exists
if ! git remote get-url origin &> /dev/null; then
    echo "❌ No remote repository configured"
    echo "   Run ./setup.sh first"
    exit 1
fi

REMOTE_URL=$(git remote get-url origin)
echo "📤 Pushing to: $REMOTE_URL"
echo ""

# Push to GitHub
echo "⏳ This may take a moment..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "======================================"
    echo "  ✅ Successfully Pushed!"
    echo "======================================"
    echo ""
    echo "Next steps:"
    echo ""
    echo "1. Go to your repository on GitHub"
    echo "2. Click on the 'Actions' tab"
    echo "3. Watch your APK being built! (takes 5-10 minutes)"
    echo "4. Download the APK from Actions → Artifacts"
    echo ""
    echo "Repository URL:"
    echo "👉 ${REMOTE_URL%.git}"
    echo ""
    echo "Actions URL:"
    echo "👉 ${REMOTE_URL%.git}/actions"
    echo ""
else
    echo ""
    echo "======================================"
    echo "  ❌ Push Failed"
    echo "======================================"
    echo ""
    echo "Common issues:"
    echo ""
    echo "1. Repository doesn't exist on GitHub"
    echo "   Create it at: https://github.com/new"
    echo ""
    echo "2. Authentication failed"
    echo "   Use a Personal Access Token (not password)"
    echo "   Generate at: https://github.com/settings/tokens"
    echo ""
    echo "3. Permission denied"
    echo "   Make sure you own the repository"
    echo ""
fi
