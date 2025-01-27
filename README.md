Here’s the properly formatted `README.md` file for your Flutter plugin. You can directly copy and paste this into your project:

````markdown
# Screenshot Prevention Plugin

A Flutter plugin to prevent screenshots on specific screens for Android. This plugin allows you to disable and enable screenshots dynamically in your Flutter app.

> **Note**: Currently, this plugin only supports Android. iOS support is not available yet.

---

## Features

- **Disable Screenshots**: Prevent users from taking screenshots or recording the screen on specific screens.
- **Enable Screenshots**: Re-enable screenshots and screen recording when needed.

---

## Installation

Add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  screenshot_prevention: ^0.0.1
```
````

Then, run:

```bash
flutter pub get
```

---

## Usage

### Import the Plugin

Add the import statement to your Dart file:

```dart
import 'package:screenshot_prevention/screenshot_prevention.dart';
```

### Disable Screenshots

To disable screenshots on a specific screen, call the `disableScreenshots` method:

```dart
@override
void initState() {
  super.initState();
  ScreenshotPrevention.disableScreenshots(); // Disable screenshots
}
```

### Enable Screenshots

To re-enable screenshots, call the `enableScreenshots` method:

```dart
@override
void dispose() {
  ScreenshotPrevention.enableScreenshots(); // Re-enable screenshots
  super.dispose();
}
```

---

## Example

Here’s a complete example of how to use the plugin in a Flutter app:

```dart
import 'package:flutter/material.dart';
import 'package:screenshot_prevention/screenshot_prevention.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SecureScreen(),
    );
  }
}

class SecureScreen extends StatefulWidget {
  @override
  _SecureScreenState createState() => _SecureScreenState();
}

class _SecureScreenState extends State<SecureScreen> {
  @override
  void initState() {
    super.initState();
    ScreenshotPrevention.disableScreenshots(); // Disable screenshots
  }

  @override
  void dispose() {
    ScreenshotPrevention.enableScreenshots(); // Re-enable screenshots
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Secure Screen"),
      ),
      body: Center(
        child: Text("Screenshots are disabled on this screen."),
      ),
    );
  }
}
```

---

## Android Implementation

This plugin uses the `FLAG_SECURE` flag in Android to prevent screenshots and screen recording. The flag is dynamically added or removed from the activity window.

### How It Works

- When `disableScreenshots` is called, the plugin adds the `FLAG_SECURE` flag to the current activity window.
- When `enableScreenshots` is called, the plugin removes the `FLAG_SECURE` flag.

---

## Limitations

- **Android Only**: This plugin currently only supports Android. iOS support is not available yet.
- **External Tools**: The plugin cannot prevent screenshots taken by external tools or on rooted devices.

---

## Contributing

Contributions are welcome! If you'd like to add iOS support or improve the plugin, feel free to open an issue or submit a pull request.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

```

---

### How to Use
1. Copy the above content.
2. Create a `README.md` file in the root of your plugin project.
3. Paste the content into the `README.md` file.
4. Save the file.

This `README.md` is ready for publishing on [pub.dev](https://pub.dev) or sharing with others. Let me know if you need further assistance! 🚀
```
