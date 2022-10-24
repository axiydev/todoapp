import 'package:flutter/material.dart';
import 'package:todoapp/util/app_consts.dart';

class AppLogger {
  static Future<void> onLog(String? msg) async {
    AppConstants.messangerKey.currentState!
        .showMaterialBanner(MaterialBanner(content: Text('$msg'), actions: [
      TextButton(
          onPressed: () {
            AppConstants.messangerKey.currentState!.hideCurrentMaterialBanner();
          },
          child: const Text('ok'))
    ]));

    await Future.delayed(const Duration(seconds: 1), () {
      AppConstants.messangerKey.currentState!.hideCurrentMaterialBanner();
    });
  }
}
