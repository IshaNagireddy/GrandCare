import 'dart:io' show Platform;

class Secret {
  static const ANDROID_CLIENT_ID = "AIzaSyCsSTRZJWJQdoGtgclMj9cdo0JRulTJI0w";
  static const IOS_CLIENT_ID = "AIzaSyB-WTB1qQsZCpE85BL4EMCcqc6JeRgQhBg";
  static String getId() => Platform.isAndroid ? Secret.ANDROID_CLIENT_ID : Secret.IOS_CLIENT_ID;
}