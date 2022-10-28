import 'dart:developer';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:todoapp/model/tasks_model.dart';
import 'package:todoapp/src/firestore/firestore_db.dart';
import 'package:todoapp/src/logger/logger_custom.dart';

class TaskListController extends GetxController {
  void updateTask(
      {required TasksModel updateTask,
      bool? isSelected,
      bool? isFavourite}) async {
    try {
      updateTask = updateTask.copyWith(
          isSelected: isSelected ?? updateTask.isSelected,
          isFavourite: isFavourite ?? updateTask.isFavourite);

      final isUpdated = await FirestoreDb.updateTask(task: updateTask);
      if (isUpdated!) {
        AppLogger.onLog('task updated');
        update();
      }
    } catch (e) {
      log(e.toString());
    }
  }

  void deleteTask({required TasksModel task}) async {
    try {
      final isDeleted = await FirestoreDb.deleteTask(task: task);
      if (isDeleted!) {
        AppLogger.onLog('Task successfully deleted');
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
