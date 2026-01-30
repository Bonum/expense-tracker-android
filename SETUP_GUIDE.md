# Expense Tracker - Setup Guide

## Quick Start Guide for Android Studio

### Step 1: Create New Project

1. Open **Android Studio**
2. Click **"New Project"**
3. Select **"Empty Activity"** template
4. Configure your project:
   - **Name**: Expense Tracker
   - **Package name**: com.example.expensetracker
   - **Save location**: Choose your preferred location
   - **Language**: Kotlin
   - **Minimum SDK**: API 24 (Android 7.0 Nougat)
   - **Build configuration language**: Kotlin DSL (build.gradle.kts)
5. Click **"Finish"**

### Step 2: Update Dependencies

1. Open `app/build.gradle.kts` (Module level)
2. Replace the entire file content with the provided `build.gradle.kts`
3. The key dependencies include:
   ```kotlin
   // Compose BOM for version management
   implementation(platform("androidx.compose:compose-bom:2024.02.00"))
   implementation("androidx.compose.material3:material3")
   implementation("androidx.compose.material:material-icons-extended")
   ```
4. Click **"Sync Now"** when prompted

### Step 3: Replace MainActivity

1. Navigate to `app/src/main/java/com/example/expensetracker/`
2. Open `MainActivity.kt`
3. Replace ALL content with the provided `ExpenseTrackerApp.kt` code
4. The file should start with:
   ```kotlin
   package com.example.expensetracker
   
   import android.os.Bundle
   import androidx.activity.ComponentActivity
   // ... more imports
   ```

### Step 4: Update Resources

1. Open `app/src/main/res/values/strings.xml`
2. Add the strings from the provided `strings.xml` file
3. You can keep existing strings and just add the new ones

### Step 5: Run the App

1. Connect an Android device via USB with **Developer Options** enabled
   - OR start an **Android Emulator** from AVD Manager
2. Click the **"Run"** button (green play icon) or press `Shift + F10`
3. Select your device/emulator
4. Wait for the build to complete
5. The app should launch automatically

## Troubleshooting

### Build Errors

**Error: "Cannot resolve symbol"**
- **Solution**: File → Invalidate Caches → Invalidate and Restart

**Error: "Execution failed for task"**
- **Solution**: Build → Clean Project, then Build → Rebuild Project

**Error: Gradle sync failed**
- **Solution**: Check internet connection, update Gradle if prompted

### Runtime Errors

**Error: App crashes on launch**
- **Solution**: Check Logcat for error messages
- Verify package name matches in all files
- Ensure all imports are correct

**Error: Compose preview not showing**
- **Solution**: Add `@Preview` annotation to composables
- Refresh preview with the refresh button

### Emulator Issues

**Slow emulator performance**
- **Solution**: 
  - Enable Hardware Acceleration (HAXM on Intel, Hyper-V on Windows)
  - Allocate more RAM to emulator (Edit AVD settings)
  - Use x86 system images instead of ARM

**Emulator won't start**
- **Solution**:
  - Tools → AVD Manager → Delete and recreate virtual device
  - Ensure virtualization is enabled in BIOS

## Testing the App

### Test Scenarios

1. **Add an expense**:
   - Tap the + button
   - Enter amount: 25.50
   - Add description: "Lunch at cafe"
   - Select category: Food
   - Tap Add
   - Verify expense appears in list

2. **View expenses**:
   - Check that total is calculated correctly
   - Verify date formatting
   - Test scrolling through multiple expenses

3. **Delete an expense**:
   - Tap delete icon on an expense
   - Confirm deletion
   - Verify expense is removed and total updates

4. **View summary**:
   - Switch to Summary tab
   - Check category breakdown
   - Verify statistics calculations
   - Test with different category combinations

5. **Category selection**:
   - Add expenses in different categories
   - Verify colors and icons display correctly
   - Check progress bars in summary

## Customization Tips

### Change App Colors

Edit the `ExpenseTrackerTheme` function in MainActivity.kt:

```kotlin
MaterialTheme(
    colorScheme = lightColorScheme(
        primary = Color(0xFF1976D2),      // Your primary color
        secondary = Color(0xFFFFA726),    // Your secondary color
        background = Color(0xFFFAFAFA),   // Background color
        // Add more colors as needed
    )
)
```

### Add More Categories

Add to the `ExpenseCategory` enum:

```kotlin
enum class ExpenseCategory(...) {
    // Existing categories...
    TRAVEL("Travel", Icons.Default.Flight, Color(0xFF00ACC1)),
    PETS("Pets", Icons.Default.Pets, Color(0xFF8BC34A)),
}
```

### Modify Category Layout

In `AddExpenseDialog`, change chunked size to display different columns:

```kotlin
// Change from 3 to 4 for 4 columns
ExpenseCategory.values().chunked(4).forEach { rowCategories ->
```

## Building APK

### Debug APK (for testing)

1. Build → Build Bundle(s) / APK(s) → Build APK(s)
2. Wait for build to complete
3. Click "locate" in the notification
4. APK will be in `app/build/outputs/apk/debug/`

### Release APK (for distribution)

1. Build → Generate Signed Bundle / APK
2. Select APK → Next
3. Create new keystore or use existing
4. Fill in keystore information
5. Select release build variant
6. Finish
7. APK will be in `app/build/outputs/apk/release/`

## Next Steps

### Enhance Your App

1. **Add Persistence**:
   - Implement Room database for data storage
   - Data survives app restarts

2. **Add More Features**:
   - Date picker for custom dates
   - Edit existing expenses
   - Budget limits with warnings

3. **Improve UI**:
   - Add animations
   - Implement dark theme
   - Add custom icons

4. **Add Analytics**:
   - Weekly/monthly reports
   - Spending trends
   - Budget vs actual charts

### Learn More

- [Jetpack Compose Documentation](https://developer.android.com/jetpack/compose)
- [Material Design 3](https://m3.material.io/)
- [Android Developers](https://developer.android.com/)
- [Kotlin Documentation](https://kotlinlang.org/docs/home.html)

## Support

If you encounter issues:

1. Check the error message in Logcat
2. Verify all files are in correct locations
3. Ensure Gradle sync completed successfully
4. Check that all dependencies downloaded correctly
5. Try Clean + Rebuild project

---

**Happy Coding! 🚀**
