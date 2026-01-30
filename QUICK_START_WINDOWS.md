# 🚀 Quick Start Guide - Windows 11 Edition

Get your APK ready in **under 10 minutes** using GitHub Actions on Windows 11!

## ⚡ Super Quick Start (3 Steps)

### 1️⃣ Extract the Archive

**Option A: Using File Explorer**
1. Right-click `expense-tracker-complete.tar.gz`
2. Extract All... (you may need 7-Zip or WinRAR if Windows doesn't support .tar.gz)
3. Navigate into the extracted folder

**Option B: Using Command Prompt**
```cmd
REM If you have tar (Windows 10 1903+ includes it)
tar -xzf expense-tracker-complete.tar.gz
cd expense-tracker-android
```

**Option C: Using PowerShell**
```powershell
# Extract using PowerShell
tar -xzf expense-tracker-complete.tar.gz
cd expense-tracker-android
```

### 2️⃣ Run Setup Script

**Option A: Double-click** `setup.bat` in File Explorer

**Option B: Command Prompt**
```cmd
setup.bat
```

**Option C: PowerShell**
```powershell
.\setup.bat
```

Follow the prompts - enter your GitHub username when asked.

### 3️⃣ Create Repository & Push

1. Go to https://github.com/new in your browser
2. Create repository named `expense-tracker-android`
3. Don't initialize with anything
4. Run `push.bat` (double-click or from command line)

**Done!** 🎉 Go to GitHub Actions tab to watch your APK being built!

---

## 🪟 Windows-Specific Notes

### File Extraction

If `.tar.gz` files don't extract automatically:

**Install 7-Zip (Free)**
1. Download from https://www.7-zip.org/
2. Right-click the archive → 7-Zip → Extract Here
3. Navigate into the extracted folder

**Or use Windows built-in tar**
- Windows 10 (version 1903+) and Windows 11 include tar
- Open Command Prompt or PowerShell
- Run: `tar -xzf expense-tracker-complete.tar.gz`

### Git Installation

If Git is not installed:

1. Download from https://git-scm.com/download/win
2. Run the installer
3. Use default options (Git Bash, Git from command line, etc.)
4. Restart Command Prompt/PowerShell after installation

### Running Scripts

**Three ways to run `.bat` files:**

1. **Double-click** the .bat file in File Explorer
2. **Command Prompt**: `setup.bat`
3. **PowerShell**: `.\setup.bat`

### Line Endings Warning

If you see warnings about CRLF/LF line endings:
```cmd
git config core.autocrlf true
```
This is normal for Windows and won't cause issues.

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

### Download from GitHub:

**Option 1: From Actions (Artifacts)**
1. Go to your repository on GitHub
2. Click "Actions" tab
3. Click the latest successful workflow run
4. Scroll down to "Artifacts"
5. Click to download `expense-tracker-debug.zip`
6. Extract the ZIP to get the APK

**Option 2: From Releases**
1. Go to your repository on GitHub
2. Click "Releases" on the right sidebar
3. Click the latest release
4. Download `app-debug.apk` from Assets

### Transfer to Android Device:

**Method 1: USB Cable**
1. Connect phone to PC via USB
2. On phone: Unlock and allow file transfer
3. Copy APK to phone's Download folder
4. On phone: Use File Manager to find and tap APK

**Method 2: Email**
1. Email APK file to yourself
2. Open email on phone
3. Download attachment
4. Tap to install

**Method 3: Cloud Storage**
1. Upload APK to Google Drive/OneDrive
2. Download on phone
3. Tap to install

### Install on Android:
1. Tap the APK file on your phone
2. If prompted, enable "Install from Unknown Sources"
3. Tap "Install"
4. Tap "Open" to launch the app

---

## 🛠️ Alternative: Build Locally (Windows)

If you prefer not to use GitHub:

### Requirements:
- **Android Studio** (latest version)
  - Download: https://developer.android.com/studio
- **JDK 17** (usually bundled with Android Studio)

### Steps:
1. Open **Android Studio**
2. Click **File → Open**
3. Select the project folder
4. Wait for Gradle sync (first time takes 5-10 minutes)
5. Click **Build → Build Bundle(s) / APK(s) → Build APK(s)**
6. Wait for build to complete
7. Click "locate" in the notification
8. APK is in `app\build\outputs\apk\debug\`

### Or Use Command Line:

**Command Prompt:**
```cmd
gradlew.bat assembleDebug
```

**PowerShell:**
```powershell
.\gradlew.bat assembleDebug
```

APK will be at: `app\build\outputs\apk\debug\app-debug.apk`

---

## 🐛 Windows-Specific Troubleshooting

### "git is not recognized..."
**Solution**: 
- Install Git from https://git-scm.com/download/win
- Restart Command Prompt/PowerShell
- Or use Git Bash (installed with Git)

### "Permission denied" or "Access Denied"
**Solution**:
- Right-click Command Prompt → Run as Administrator
- Or: Disable antivirus temporarily
- Or: Add folder to antivirus exceptions

### "Cannot find gradlew.bat"
**Solution**:
- Make sure you're in the project folder
- Check if file exists: `dir gradlew.bat`
- Re-extract the archive

### "The system cannot find the path specified"
**Solution**:
- Use full paths with quotes: `"C:\path\to\project"`
- Avoid spaces in folder names
- Stay in one directory level (no deep nesting)

### Gradle build very slow
**Solution**:
- First build is always slow (downloads dependencies)
- Disable antivirus for project folder
- Use SSD if possible
- Close other applications

### Files extracted with wrong line endings
**Solution**:
- Use 7-Zip instead of Windows built-in extractor
- Or run: `git config core.autocrlf true`

---

## 💡 Windows Pro Tips

1. **Use Windows Terminal** (Modern, better than CMD)
   - Install from Microsoft Store (free)
   - Supports tabs, better colors, easier to use

2. **Pin Command Prompt to Taskbar**
   - Quick access for running commands
   - Right-click → Pin to taskbar

3. **Use PowerShell for better experience**
   - More powerful than CMD
   - Better tab completion
   - Modern scripting

4. **Create Desktop Shortcut**
   - Right-click project folder → Send to → Desktop
   - Easy access to project

5. **Use Git Bash for Unix commands**
   - Installed with Git for Windows
   - Provides Unix-like environment
   - Can run `.sh` scripts if needed

---

## 🎯 Quick Reference (Windows)

### File Paths
```
Windows uses backslashes: C:\Users\YourName\expense-tracker-android
PowerShell/CMD accepts both: C:/Users/YourName/expense-tracker-android
```

### Common Commands

**Command Prompt / PowerShell:**
```cmd
REM Navigate to project
cd C:\path\to\expense-tracker-android

REM Run setup
setup.bat

REM Push to GitHub
push.bat

REM Build locally
gradlew.bat assembleDebug

REM Check Git status
git status

REM View Git remote
git remote -v
```

**Git Bash (Unix-like):**
```bash
# Navigate to project
cd /c/path/to/expense-tracker-android

# Run Unix scripts (if you prefer)
./setup.sh
./push.sh

# Build
./gradlew assembleDebug
```

---

## ✅ Success Checklist

- [ ] Extracted archive successfully
- [ ] Git is installed and working
- [ ] Ran setup.bat successfully
- [ ] Created GitHub repository
- [ ] Pushed code successfully
- [ ] GitHub Actions build succeeded
- [ ] Downloaded APK
- [ ] Transferred to Android device
- [ ] Installed and app works!

---

## 📚 Additional Windows Resources

### Recommended Tools:
- **7-Zip**: https://www.7-zip.org/ (for archives)
- **Windows Terminal**: Microsoft Store (better terminal)
- **Git for Windows**: https://git-scm.com/ (includes Git Bash)
- **Android Studio**: https://developer.android.com/studio

### Helpful Commands:
```cmd
REM Check if Git is installed
git --version

REM Check if Java is installed (for local builds)
java -version

REM View directory contents
dir

REM Change directory
cd foldername

REM Go up one directory
cd ..

REM View current path
cd
```

---

## 🆘 Still Need Help?

1. **Check the full guides**:
   - `GITHUB_SETUP_GUIDE.md` - Detailed GitHub instructions
   - `SETUP_GUIDE.md` - Android Studio guide
   - `PROJECT_STRUCTURE.md` - File layout reference

2. **Common Windows issues**:
   - Use quotes around paths with spaces
   - Run as Administrator if permission errors
   - Check antivirus isn't blocking scripts
   - Restart terminal after installing software

3. **GitHub Actions logs**:
   - Actions tab shows detailed error messages
   - Look for red X marks
   - Click workflow run for details

---

## 🎉 You're All Set!

Your Windows 11 setup is complete! The project works exactly the same way on Windows as on other platforms - the only difference is using `.bat` files instead of `.sh` files.

**Start with**: Double-click `setup.bat` and follow the prompts!

**Happy coding!** 📱✨ on Windows 11

---

*For detailed explanations, see GITHUB_SETUP_GUIDE.md*
