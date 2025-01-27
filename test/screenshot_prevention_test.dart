// import 'package:flutter_test/flutter_test.dart';
// import 'package:screenshot_prevention/screenshot_prevention.dart';
// import 'package:screenshot_prevention/screenshot_prevention_platform_interface.dart';
// import 'package:screenshot_prevention/screenshot_prevention_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';

// class MockScreenshotPreventionPlatform
//     with MockPlatformInterfaceMixin
//     implements ScreenshotPreventionPlatform {

//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }

// void main() {
//   final ScreenshotPreventionPlatform initialPlatform = ScreenshotPreventionPlatform.instance;

//   test('$MethodChannelScreenshotPrevention is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelScreenshotPrevention>());
//   });

//   test('getPlatformVersion', () async {
//     ScreenshotPrevention screenshotPreventionPlugin = ScreenshotPrevention();
//     MockScreenshotPreventionPlatform fakePlatform = MockScreenshotPreventionPlatform();
//     ScreenshotPreventionPlatform.instance = fakePlatform;

//     expect(await screenshotPreventionPlugin.getPlatformVersion(), '42');
//   });
// }
