# GitHub Actions Setup Guide - Automatic APK Building

This guide will help you set up automatic APK building using GitHub Actions. Every time you push code to GitHub, it will automatically build your Android app and create downloadable APK files!

## 📋 Prerequisites

- A GitHub account (free) - sign up at https://github.com
- Git installed on your computer (download from https://git-scm.com)
- Basic familiarity with command line/terminal

## 🚀 Step-by-Step Setup

### Step 1: Create a GitHub Repository

1. Go to https://github.com and log in
2. Click the **"+"** icon in the top right
3. Select **"New repository"**
4. Configure your repository:
   - **Repository name**: `expense-tracker-android`
   - **Description**: "Personal Expense Tracker Android App"
   - **Visibility**: Choose Public or Private
   - **DO NOT** initialize with README, .gitignore, or license (we have our own)
5. Click **"Create repository"**

### Step 2: Prepare Your Local Project

1. **Download all the project files** from the outputs folder
2. Create a new folder on your computer called `expense-tracker-android`
3. Extract/copy ALL files maintaining this structure:

```
expense-tracker-android/
├── .github/
│   └── workflows/
│       └── build.yml
├── .gitignore
├── app/
│   ├── build.gradle.kts
│   └── src/
│       └── main/
│           ├── AndroidManifest.xml
│           ├── java/
│           │   └── com/
│           │       └── example/
│           │           └── expensetracker/
│           │               └── MainActivity.kt
│           └── res/
│               └── values/
│                   └── strings.xml
├── build.gradle.kts
├── gradle.properties
├── gradle/
│   └── wrapper/
│       └── gradle-wrapper.properties
├── gradlew
├── settings.gradle.kts
└── README.md
```

### Step 3: Initialize Git and Push to GitHub

Open Terminal (Mac/Linux) or Command Prompt (Windows) and navigate to your project folder:

```bash
cd path/to/expense-tracker-android
```

Then run these commands one by one:

```bash
# Initialize git repository
git init

# Add all files
git add .

# Create first commit
git commit -m "Initial commit - Expense Tracker App"

# Add your GitHub repository as remote
# Replace YOUR-USERNAME with your actual GitHub username
git remote add origin https://github.com/YOUR-USERNAME/expense-tracker-android.git

# Push to GitHub
git branch -M main
git push -u origin main
```

**Note**: You'll be prompted for your GitHub credentials. Use your GitHub username and a Personal Access Token (not password):
- Go to GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)
- Generate new token with "repo" permissions
- Use this token as your password

### Step 4: Watch the Magic Happen! ✨

1. Go to your repository on GitHub
2. Click on the **"Actions"** tab
3. You should see a workflow running called "Android CI - Build APK"
4. Click on it to watch the build progress (takes about 5-10 minutes)

The workflow will:
- ✅ Set up Java and Android build environment
- ✅ Download all dependencies
- ✅ Build debug APK (for testing)
- ✅ Build release APK (for distribution)
- ✅ Upload APKs as artifacts
- ✅ Create a GitHub Release with downloadable APKs

### Step 5: Download Your APK

Once the build completes successfully:

**Option A: From Artifacts** (Available immediately)
1. In the Actions tab, click on the completed workflow
2. Scroll down to **"Artifacts"**
3. Download either:
   - `expense-tracker-debug.apk` - For testing
   - `expense-tracker-release-unsigned.apk` - For distribution

**Option B: From Releases** (Prettier, with release notes)
1. Go to the main repository page
2. Click on **"Releases"** on the right sidebar
3. Click on the latest release
4. Download `app-debug.apk` from the Assets section

## 📱 Installing the APK on Your Android Device

### Method 1: Direct Download on Phone

1. Open the GitHub release page on your Android phone
2. Download the `app-debug.apk`
3. Open the downloaded file
4. If prompted, enable "Install from Unknown Sources" for your browser
5. Tap "Install"

### Method 2: Transfer from Computer

1. Download APK on your computer
2. Connect your Android phone via USB
3. Copy the APK to your phone's Downloads folder
4. On your phone, use a File Manager to find and tap the APK
5. Enable "Install from Unknown Sources" if prompted
6. Tap "Install"

### Security Note

Android will warn you about installing from unknown sources because this app isn't from Google Play Store. This is normal and safe for apps you built yourself!

To enable installation:
- **Android 8.0+**: Settings → Apps → Special access → Install unknown apps → Select your browser/file manager → Allow
- **Older Android**: Settings → Security → Unknown sources → Enable

## 🔄 Making Changes and Rebuilding

Want to modify the app? Easy!

1. Make changes to your code locally
2. Commit and push:
   ```bash
   git add .
   git commit -m "Description of your changes"
   git push
   ```
3. GitHub Actions automatically rebuilds the APK!
4. Download the new version from Actions or Releases

## 🎯 Understanding the Build Process

The GitHub Actions workflow (`.github/workflows/build.yml`) does this:

1. **Triggers**: Runs on every push to main/master branch
2. **Environment**: Sets up Ubuntu with Java 17
3. **Build Debug**: Creates `app-debug.apk` (with debug signing)
4. **Build Release**: Creates `app-release-unsigned.apk` (no signing)
5. **Upload**: Makes APKs available for download
6. **Release**: Creates a tagged release with version number

### Build Types Explained

**Debug APK** (`app-debug.apk`):
- ✅ Ready to install immediately
- ✅ Includes debugging information
- ✅ Perfect for testing
- ❌ Larger file size
- ❌ Not optimized

**Release APK** (`app-release-unsigned.apk`):
- ✅ Smaller, optimized file
- ❌ Not signed (needs signing for Play Store)
- ✅ Better performance
- For Play Store, you'd need to sign this

## 🔐 Signing Your Release APK (Optional - For Play Store)

If you want to publish to Google Play Store, you need to sign the release APK:

1. Generate a keystore:
   ```bash
   keytool -genkey -v -keystore my-release-key.keystore -alias my-key-alias -keyalg RSA -keysize 2048 -validity 10000
   ```

2. Add keystore details to GitHub Secrets:
   - Go to repository Settings → Secrets and variables → Actions
   - Add these secrets:
     - `KEYSTORE_FILE` (base64 encoded keystore)
     - `KEYSTORE_PASSWORD`
     - `KEY_ALIAS`
     - `KEY_PASSWORD`

3. Update the workflow to include signing (I can provide updated workflow if needed)

## 🐛 Troubleshooting

### Build Fails with "Gradle sync failed"

- Check that all files are in the correct structure
- Verify `gradle.properties` and `build.gradle.kts` are present
- Look at the error message in Actions logs

### "Permission denied" for gradlew

Make sure gradlew is executable:
```bash
chmod +x gradlew
git add gradlew
git commit -m "Make gradlew executable"
git push
```

### Build takes too long or times out

- First build takes longest (5-10 minutes) - subsequent builds are faster
- Gradle caches dependencies for faster future builds
- If timeout persists, check Actions logs for errors

### APK won't install on phone

- Make sure "Install from Unknown Sources" is enabled
- Try the debug APK instead of release
- Check your Android version is 7.0 or higher
- Clear browser/downloads app cache

## 📊 Monitoring Your Builds

**Actions Tab** shows:
- ✅ Build status (success/failure)
- 📝 Build logs (detailed)
- ⏱️ Build time
- 📦 Artifacts (downloadable APKs)

**Releases** shows:
- 🏷️ Version numbers
- 📅 Release dates
- 📥 Download statistics
- 📝 Release notes

## 🎨 Customization Options

### Change App Version

Edit `app/build.gradle.kts`:
```kotlin
defaultConfig {
    versionCode = 2        // Increment for each release
    versionName = "1.1"    // User-visible version
}
```

### Add Signing Configuration

Add to `app/build.gradle.kts`:
```kotlin
signingConfigs {
    create("release") {
        storeFile = file("my-release-key.keystore")
        storePassword = System.getenv("KEYSTORE_PASSWORD")
        keyAlias = System.getenv("KEY_ALIAS")
        keyPassword = System.getenv("KEY_PASSWORD")
    }
}
```

### Schedule Nightly Builds

Add to `.github/workflows/build.yml` under `on:`:
```yaml
schedule:
  - cron: '0 0 * * *'  # Runs at midnight daily
```

## 📚 Additional Resources

- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [Android App Distribution](https://developer.android.com/studio/publish)
- [Git Basics Tutorial](https://git-scm.com/book/en/v2/Getting-Started-Git-Basics)

## 🎉 Success Checklist

- [ ] Created GitHub repository
- [ ] Pushed all files to GitHub
- [ ] Workflow ran successfully
- [ ] Downloaded APK from Actions or Releases
- [ ] Installed APK on Android device
- [ ] App launches and works correctly

## 💡 Pro Tips

1. **Use Branches**: Create feature branches for experiments
   ```bash
   git checkout -b new-feature
   # Make changes
   git push origin new-feature
   ```

2. **Enable Email Notifications**: GitHub → Settings → Notifications → Actions
   - Get notified when builds succeed/fail

3. **Use Release Tags**: Manually create releases with meaningful version numbers

4. **Keep Dependencies Updated**: Regularly update versions in `build.gradle.kts`

5. **Add Tests**: GitHub Actions can run automated tests before building

## 🤝 Need Help?

If you encounter issues:
1. Check the Actions tab for detailed error logs
2. Review this guide carefully
3. Search GitHub Actions documentation
4. Check Android build error messages

---

**Congratulations!** 🎊 You now have a fully automated Android build pipeline! Every code change you push will automatically build a fresh APK for you to download and install.

Happy coding! 📱✨
