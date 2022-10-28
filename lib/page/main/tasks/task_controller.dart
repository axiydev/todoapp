import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/model/task_status.dart';
import 'package:todoapp/model/tasks_model.dart';
import 'package:todoapp/src/auth/fire_auth_src.dart';
import 'package:todoapp/src/firestore/firestore_db.dart';
import 'package:todoapp/src/logger/logger_custom.dart';
import 'package:todoapp/util/app_consts.dart';
import 'package:uuid/uuid.dart';

class TaskController extends GetxController {
  final taskListName = Get.arguments[AppConstants.argumentName];
  final taskTextController = TextEditingController();
  bool? _isEdit = false;
  void changeEdit() {
    _isEdit = !_isEdit!;
    update();
  }

  bool get isEdit => _isEdit!;
  bool? _isFavourite = false;
  bool? _isSelected = false;
  void createTask() async {
    final id = const Uuid().v1();
    try {
      if (taskTextController.text.isEmpty) return;

      TasksModel? task = TasksModel(
          id: id,
          userId: FireAuth.auth.currentUser!.uid,
          taskListName: taskListName,
          publishDate: DateTime.now(),
          isCompleted: false,
          isSelected: _isSelected,
          isFavourite: _isFavourite,
          taskStatus: TaskStatus.uncompleted,
          title: taskTextController.text,
          description: taskTextController.text);
      bool? taskCreated = await FirestoreDb.addTask(task: task);
      if (taskCreated!) {
        AppLogger.onLog('Task created');
        _isFavourite = false;
        taskTextController.clear();
        update();
      }
    } catch (e) {
      log(e.toString());
    }
  }

  void changeSelect(bool value) {
    _isSelected = value;
    update();
  }

  bool get isSelected => _isSelected!;
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

  void onChange(bool? value) {
    _isFavourite = value;
    update();
  }

  bool? get isCompleted => _isFavourite!;
}
