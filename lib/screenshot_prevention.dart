import 'package:flutter/services.dart';

class ScreenshotPrevention {
  static const MethodChannel _channel = MethodChannel('screenshot_prevention');

  /// Disables screenshots for the current screen.
  static Future<void> disableScreenshots() async {
    try {
      await _channel.invokeMethod('disableScreenshots');
    } on PlatformException catch (e) {
      print("Failed to disable screenshots: ${e.message}");
    }
  }

  /// Enables screenshots for the current screen.
  static Future<void> enableScreenshots() async {
    try {
      await _channel.invokeMethod('enableScreenshots');
    } on PlatformException catch (e) {
      print("Failed to enable screenshots: ${e.message}");
    }
  }
}