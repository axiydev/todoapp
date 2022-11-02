import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:todoapp/assets/app_colors.dart';
import 'package:todoapp/src/auth/fire_auth_src.dart';
import 'package:todoapp/src/logger/logger_custom.dart';
import 'package:todoapp/src/prefs/prefs.dart';
import 'package:todoapp/util/app_routes.dart';

class MainController extends GetxController {
  TextEditingController? listNameController = TextEditingController();
  void logout() async {
    try {
      final loggedOut = await Prefs.removeUid();
      if (loggedOut!) {
        Get.toNamed(AppRouteNames.signIn);
        await FireAuth.auth.signOut();
        AppLogger.onLog('Tzimdan chiqildi');
      }
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  void onInit() {
    update();
    log('initSTATE');
    super.onInit();
  }

  void showAlertDiologApp(BuildContext context,
      {required Function onCreateFunctionPressed}) async {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) => AlertDialog(
              title: const Text('New List'),
              content: TextFormField(
                  controller: listNameController,
                  decoration: const InputDecoration(
                    filled: true,
                    hintText: 'Enter list title',
                    fillColor: AppColors.dialogFieldColor,
                  )),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28.w)),
              actions: [
                TextButton(
                    style: TextButton.styleFrom(
                        foregroundColor: AppColors.primary),
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text('Cancel')),
                ElevatedButton.icon(
                    onPressed: () => onCreateFunctionPressed(),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.w)),
                        backgroundColor: AppColors.primary),
                    icon: const Icon(Icons.add),
                    label: const Text('Create'))
              ],
            ));
  }
}
