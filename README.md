# Expense Tracker - Android Application

A modern, beautiful Android expense tracking application built with Kotlin and Jetpack Compose.

## 📱 Features

### Core Functionality
- **Add Expenses**: Quickly add expenses with amount, category, and optional description
- **Categorize Spending**: 7 predefined categories with custom icons and colors:
  - 🍕 Food (Red)
  - 🚗 Transport (Teal)
  - 🛒 Shopping (Yellow)
  - 🎬 Entertainment (Light Green)
  - ⚡ Utilities (Mint)
  - 🏥 Health (Pink)
  - ⋯ Other (Purple)

### Expense List View
- View all expenses in chronological order
- See total spending at a glance
- Each expense shows category, description, date, and amount
- Swipe to delete expenses with confirmation dialog
- Empty state with helpful guidance

### Summary & Analytics
- **Spending by Category**: Visual breakdown showing spending per category
- **Progress Bars**: Visual representation of spending distribution
- **Statistics Dashboard**:
  - Total number of expenses
  - Average expense amount
  - Highest expense
  - Lowest expense

### User Interface
- **Material Design 3**: Modern, clean interface following Material You guidelines
- **Smooth Animations**: Polished transitions and interactions
- **Color-Coded Categories**: Easy visual identification of expense types
- **Responsive Design**: Adapts to different screen sizes
- **Tab Navigation**: Easy switching between Expenses and Summary views

## 🛠️ Technical Stack

- **Language**: Kotlin
- **UI Framework**: Jetpack Compose
- **Architecture**: MVVM pattern ready (state management with remember/mutableStateOf)
- **Material Design**: Material 3 components
- **Minimum SDK**: 24 (Android 7.0)
- **Target SDK**: 34 (Android 14)

## 📦 Project Structure

```
ExpenseTrackerApp/
├── app/
│   ├── src/
│   │   ├── main/
│   │   │   ├── java/com/example/expensetracker/
│   │   │   │   └── MainActivity.kt (Main app file)
│   │   │   ├── AndroidManifest.xml
│   │   │   └── res/
│   │   │       ├── values/
│   │   │       │   ├── strings.xml
│   │   │       │   └── themes.xml
│   │   │       └── mipmap/
│   │   └── build.gradle.kts
│   └── build.gradle.kts
├── gradle/
└── settings.gradle.kts
```

## 🚀 Getting Started

### Prerequisites
- Android Studio Hedgehog (2023.1.1) or later
- JDK 8 or higher
- Android SDK with API level 34

### Installation Steps

1. **Create a new Android Studio project**:
   - Open Android Studio
   - Select "New Project"
   - Choose "Empty Activity"
   - Set package name to `com.example.expensetracker`
   - Set language to Kotlin
   - Set Minimum SDK to API 24

2. **Replace the generated files**:
   - Replace `MainActivity.kt` with the provided `ExpenseTrackerApp.kt` content
   - Update `build.gradle.kts` (Module level) with the provided dependencies
   - Update `AndroidManifest.xml` if needed

3. **Sync Gradle**:
   - Click "Sync Now" when prompted
   - Wait for dependencies to download

4. **Run the app**:
   - Connect an Android device or start an emulator
   - Click the "Run" button (▶️) in Android Studio

## 💡 Usage Guide

### Adding an Expense
1. Tap the **+** floating action button
2. Enter the expense amount
3. Optionally add a description
4. Select a category by tapping on the category chip
5. Tap "Add" to save

### Viewing Expenses
- Switch to the **Expenses** tab to see all transactions
- The total spending is displayed at the top
- Each expense shows its category icon, amount, and date
- Tap the delete icon to remove an expense

### Viewing Summary
- Switch to the **Summary** tab for analytics
- See spending breakdown by category
- View statistics including average, highest, and lowest expenses
- Progress bars show relative spending in each category

## 🎨 Customization

### Adding New Categories
To add more expense categories, modify the `ExpenseCategory` enum:

```kotlin
enum class ExpenseCategory(val displayName: String, val icon: ImageVector, val color: Color) {
    // Add your new category here
    EDUCATION("Education", Icons.Default.School, Color(0xFF9C27B0)),
    // ...
}
```

### Changing Colors
The app uses Material 3 theming. Modify colors in the `ExpenseTrackerTheme`:

```kotlin
colorScheme = lightColorScheme(
    primary = Color(0xFF6200EE),  // Change primary color
    secondary = Color(0xFF03DAC6), // Change secondary color
    // ...
)
```

## 🔮 Future Enhancements

Potential features for future versions:
- **Data Persistence**: Save expenses locally using Room database
- **Budget Setting**: Set monthly budgets and track spending limits
- **Date Range Filters**: Filter expenses by date range
- **Export Data**: Export expenses to CSV or PDF
- **Charts & Graphs**: Add pie charts and line graphs for better visualization
- **Search Functionality**: Search expenses by description or category
- **Recurring Expenses**: Set up recurring expenses
- **Multiple Currencies**: Support for different currencies
- **Dark Mode**: Implement dark theme support
- **Cloud Sync**: Sync data across devices

## 📝 Code Highlights

### State Management
The app uses Compose's state management:
```kotlin
var expenses by remember { mutableStateOf(listOf<Expense>()) }
```

### Data Model
Simple, extensible data classes:
```kotlin
data class Expense(
    val id: String = UUID.randomUUID().toString(),
    val amount: Double,
    val category: ExpenseCategory,
    val description: String,
    val date: Date = Date()
)
```

### Material 3 Components
Uses modern Material Design components:
- `TopAppBar`, `Scaffold`, `FloatingActionButton`
- `Card`, `TextField`, `TabRow`
- `AlertDialog`, `Icon`, `Button`

## 📄 License

This project is open source and available for educational purposes.

## 🤝 Contributing

Feel free to fork this project and submit pull requests with improvements!

## 📧 Support

For questions or issues, please open an issue in the repository.

---

**Built with ❤️ using Kotlin and Jetpack Compose**
