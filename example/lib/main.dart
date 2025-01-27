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
    ScreenshotPrevention
        .disableScreenshots(); // Disable screenshots when the screen is loaded
  }

  @override
  void dispose() {
    ScreenshotPrevention
        .enableScreenshots(); // Re-enable screenshots when the screen is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Secure Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Screenshots are disabled on this screen."),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NonSecureScreen()),
                );
              },
              child: Text("Go to Non-Secure Screen"),
            ),
          ],
        ),
      ),
    );
  }
}

class NonSecureScreen extends StatefulWidget {
  @override
  _NonSecureScreenState createState() => _NonSecureScreenState();
}

class _NonSecureScreenState extends State<NonSecureScreen> {
  @override
  void initState() {
    super.initState();
    ScreenshotPrevention
        .enableScreenshots(); // Enable screenshots when the screen is loaded
  }

  @override
  void dispose() {
    ScreenshotPrevention
        .disableScreenshots(); // Disable screenshots when the screen is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Non-Secure Screen"),
      ),
      body: Center(
        child: Text("Screenshots are enabled on this screen."),
      ),
    );
  }
}
