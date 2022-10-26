import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/util/app_consts.dart';

class TaskController extends GetxController {
  final taskListName = Get.arguments[AppConstants.argumentName];
  bool? isVisible = false;
  void changeVisible(bool? value) {
    isVisible = value;
    update();
  }

  final focusNode = FocusNode();
  @override
  void onInit() {
    focusNode.addListener(listener);
    super.onInit();
  }

  void listener() {
    debugPrint("FOCUSED:::::${focusNode.hasFocus.toString()}");
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  void openAKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(focusNode);
    changeVisible(true);
    update();
  }

  void closeTheKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus();
    changeVisible(false);
    update();
  }
}
