# 🚀 Quick Start Guide - Expense Tracker Android App

Get your APK ready in **under 10 minutes** using GitHub Actions!

## ⚡ Super Quick Start (3 Steps)

### 1️⃣ Extract the Archive
```bash
tar -xzf expense-tracker-complete.tar.gz
cd expense-tracker-android
```

### 2️⃣ Run Setup Script
```bash
./setup.sh
# Follow the prompts - enter your GitHub username
```

### 3️⃣ Create Repository & Push
1. Go to https://github.com/new
2. Create repository named `expense-tracker-android`
3. Don't initialize with anything
4. Run: `./push.sh`

**Done!** 🎉 Go to GitHub Actions tab to watch your APK being built!

---

## 📋 What You Get

After the GitHub Actions build completes (5-10 minutes), you'll have:

### ✅ Two APK Files:
1. **app-debug.apk** - Ready to install and test
2. **app-release-unsigned.apk** - Optimized release version

### ✅ Automatic Features:
- 🔄 Rebuilds APK on every code push
- 📦 Artifacts available for download
- 🏷️ Versioned releases
- 📝 Automatic release notes

---

## 📱 App Features

Your Expense Tracker includes:

### Core Features:
- ➕ Add expenses with amount, category, and description
- 🗂️ 7 color-coded categories (Food, Transport, Shopping, etc.)
- 📊 Visual spending analytics
- 📈 Statistics dashboard
- 🗑️ Delete expenses with confirmation
- 💎 Material Design 3 UI

### Technical Features:
- 🎨 Built with Jetpack Compose
- 🔧 Kotlin programming language
- 📐 MVVM architecture ready
- 🎯 Minimum Android 7.0 (API 24)
- 📱 Responsive design

---

## 📥 Download & Install APK

### From GitHub Actions:
1. Repository → Actions tab
2. Click latest workflow run
3. Scroll to "Artifacts"
4. Download `expense-tracker-debug`
5. Extract and install the APK

### From Releases:
1. Repository → Releases (right sidebar)
2. Click latest release
3. Download `app-debug.apk`
4. Install on your Android device

### Installation on Android:
1. Transfer APK to phone
2. Open file
3. Enable "Install from Unknown Sources"
4. Tap "Install"

---

## 🛠️ Alternative: Build Locally

If you prefer not to use GitHub:

### Requirements:
- Android Studio (latest version)
- JDK 17

### Steps:
1. Open Android Studio
2. Open project folder
3. Wait for Gradle sync
4. Build → Build Bundle(s) / APK(s) → Build APK(s)
5. APK will be in `app/build/outputs/apk/debug/`

---

## 📚 Documentation Included

| File | Purpose |
|------|---------|
| **README.md** | Feature overview & technical details |
| **SETUP_GUIDE.md** | Android Studio installation guide |
| **GITHUB_SETUP_GUIDE.md** | Complete GitHub Actions guide |
| **PROJECT_STRUCTURE.md** | File structure documentation |
| **QUICK_START.md** | This file! |

---

## 🎯 Common Use Cases

### "I just want the APK now!"
→ Follow the **Super Quick Start** above (10 mins)

### "I want to modify the app first"
→ Open in Android Studio, make changes, then follow **Super Quick Start**

### "I don't want to use GitHub"
→ Use **Alternative: Build Locally** section

### "I want to publish to Play Store"
→ Read the signing section in **GITHUB_SETUP_GUIDE.md**

---

## 🐛 Troubleshooting

### "git: command not found"
**Solution**: Install Git from https://git-scm.com

### "Permission denied: ./setup.sh"
**Solution**: Run `chmod +x setup.sh push.sh gradlew`

### "Build failed on GitHub"
**Solution**: Check Actions tab → Click failed build → Read error logs

### "APK won't install"
**Solution**: Enable "Install from Unknown Sources" in Android settings

### "Can't push to GitHub"
**Solution**: 
- Make sure repository exists on GitHub first
- Use Personal Access Token (not password)
- Generate at: https://github.com/settings/tokens

---

## 💡 Pro Tips

1. **First build is slowest** - Subsequent builds are faster (2-3 mins)
2. **Use debug APK for testing** - It's signed and ready to install
3. **Star the repository** - Easy to find later
4. **Enable notifications** - Get alerts when builds complete
5. **Create branches** - Experiment without affecting main

---

## 🎨 Quick Customization

### Change App Name:
Edit `app/src/main/res/values/strings.xml`:
```xml
<string name="app_name">My Expense Tracker</string>
```

### Change Colors:
Edit `MainActivity.kt`, find `ExpenseTrackerTheme`:
```kotlin
primary = Color(0xFF6200EE),  // Change this
```

### Add Category:
Edit `MainActivity.kt`, find `ExpenseCategory` enum:
```kotlin
TRAVEL("Travel", Icons.Default.Flight, Color(0xFF00ACC1)),
```

---

## ✅ Success Checklist

- [ ] Extracted archive
- [ ] Ran setup.sh
- [ ] Created GitHub repository
- [ ] Pushed code successfully
- [ ] GitHub Actions build succeeded
- [ ] Downloaded APK
- [ ] Installed on Android device
- [ ] App works perfectly!

---

## 🆘 Need More Help?

1. **Read the guides**: All questions are answered in the documentation
2. **Check Actions logs**: Detailed error messages in GitHub Actions
3. **Google the error**: Most build errors have solutions online
4. **Verify structure**: Make sure files are in correct locations

---

## 🎉 What's Next?

Once your app is running:

### Enhance It:
- Add Room database for data persistence
- Implement budget limits
- Add date range filters
- Create charts and graphs
- Add export to CSV feature

### Share It:
- Share APK with friends
- Publish to Play Store
- Make it open source
- Add features based on feedback

### Learn More:
- Explore Jetpack Compose
- Study Material Design 3
- Learn MVVM architecture
- Experiment with Kotlin

---

## 📞 Quick Reference Commands

```bash
# Setup
./setup.sh

# Push to GitHub
./push.sh

# Build locally (if you have Android Studio)
./gradlew assembleDebug

# Clean build
./gradlew clean

# Check project status
git status

# See changes
git diff
```

---

**You're all set!** 🚀 

Your complete Android development pipeline is ready. Every code change you push will automatically build a fresh APK. 

**Happy coding!** 📱✨

---

*Questions? Check GITHUB_SETUP_GUIDE.md for detailed explanations.*
