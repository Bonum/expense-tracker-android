#!/bin/bash

# Quick Start Script for Expense Tracker Android App
# This script helps you set up the GitHub repository quickly

echo "======================================"
echo "  Expense Tracker - Quick Setup"
echo "======================================"
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first:"
    echo "   https://git-scm.com/downloads"
    exit 1
fi

echo "✅ Git is installed"
echo ""

# Get GitHub username
read -p "Enter your GitHub username: " GITHUB_USER

if [ -z "$GITHUB_USER" ]; then
    echo "❌ GitHub username cannot be empty"
    exit 1
fi

# Get repository name
read -p "Enter repository name (default: expense-tracker-android): " REPO_NAME
REPO_NAME=${REPO_NAME:-expense-tracker-android}

echo ""
echo "📋 Configuration:"
echo "   GitHub User: $GITHUB_USER"
echo "   Repository:  $REPO_NAME"
echo ""

# Confirm
read -p "Continue with this configuration? (y/n): " CONFIRM
if [ "$CONFIRM" != "y" ] && [ "$CONFIRM" != "Y" ]; then
    echo "❌ Setup cancelled"
    exit 0
fi

echo ""
echo "🚀 Initializing Git repository..."

# Initialize git
git init

echo "✅ Git initialized"
echo ""

# Add all files
echo "📦 Adding files to Git..."
git add .

if [ $? -ne 0 ]; then
    echo "❌ Failed to add files"
    exit 1
fi

echo "✅ Files added"
echo ""

# Create commit
echo "💾 Creating initial commit..."
git commit -m "Initial commit - Expense Tracker Android App

- Modern expense tracking app with Material Design 3
- Built with Kotlin and Jetpack Compose
- 7 expense categories with visual analytics
- Automated APK building via GitHub Actions"

if [ $? -ne 0 ]; then
    echo "❌ Failed to create commit"
    exit 1
fi

echo "✅ Commit created"
echo ""

# Set up remote
REMOTE_URL="https://github.com/$GITHUB_USER/$REPO_NAME.git"
echo "🔗 Setting up remote repository..."
echo "   URL: $REMOTE_URL"

git remote add origin "$REMOTE_URL"

if [ $? -ne 0 ]; then
    echo "⚠️  Remote may already exist, removing and re-adding..."
    git remote remove origin
    git remote add origin "$REMOTE_URL"
fi

echo "✅ Remote configured"
echo ""

# Rename branch to main
echo "🌿 Setting up main branch..."
git branch -M main

echo "✅ Branch configured"
echo ""

# Instructions for pushing
echo "======================================"
echo "  📤 Ready to Push!"
echo "======================================"
echo ""
echo "Next steps:"
echo ""
echo "1. Create the repository on GitHub:"
echo "   👉 Go to: https://github.com/new"
echo "   👉 Repository name: $REPO_NAME"
echo "   👉 Make it Public or Private"
echo "   👉 DO NOT initialize with README, .gitignore, or license"
echo "   👉 Click 'Create repository'"
echo ""
echo "2. Push your code:"
echo "   Run this command: ./push.sh"
echo "   (or manually: git push -u origin main)"
echo ""
echo "3. After pushing, go to GitHub Actions tab to see your APK being built!"
echo ""
echo "======================================"
echo "  ✨ Setup Complete!"
echo "======================================"
