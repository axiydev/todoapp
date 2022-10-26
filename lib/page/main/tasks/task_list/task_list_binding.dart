import 'package:get/instance_manager.dart';
import 'package:todoapp/page/main/tasks/task_list/task_list_controller.dart';

class TaskListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TaskListController>(() => TaskListController());
  }
}
