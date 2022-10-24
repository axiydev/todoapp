import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static Future<bool?> saveUid({required String? uid}) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.setString('uid', uid!);
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  static Future<String?> loadUID() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString('uid');
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  static Future<bool?> removeUid() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.remove('uid');
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
