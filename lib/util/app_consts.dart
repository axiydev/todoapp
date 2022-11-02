import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:todoapp/page/auth/sign_in/sign_in_binding.dart';
import 'package:todoapp/page/auth/sign_in/sign_in_view.dart';
import 'package:todoapp/page/auth/sign_up/sign_up_binding.dart';
import 'package:todoapp/page/auth/sign_up/sign_up_view.dart';
import 'package:todoapp/page/main/main_bindings.dart';
import 'package:todoapp/page/main/main_view.dart';
import 'package:todoapp/page/main/tasks/task_binding.dart';
import 'package:todoapp/page/main/tasks/task_view.dart';
import 'package:todoapp/util/app_routes.dart';

import '../page/main/tasks/task_list/task_list_binding.dart';
import '../page/main/tasks/task_list/task_list_view.dart';

class AppRouteUtils {
  static final List<GetPage> pages = [
    ///Main
    GetPage(
        name: AppRouteNames.main,
        page: () => MainView.view,
        binding: MainBinding()),

    ///Sign In
    GetPage(
        name: AppRouteNames.signIn,
        page: () => SignInView(),
        binding: SignInBinding()),

    ///Sign Up
    GetPage(
        name: AppRouteNames.signUp,
        page: () => SignUpView(),
        binding: SignUpBinding()),

    GetPage(
        name: AppRouteNames.task,
        page: () => const TaskView(),
        binding: TaskBinding()),
    GetPage(
        name: AppRouteNames.taskListView,
        page: () => const TaskListView(
              isEdit: false,
            ),
        binding: TaskListBinding())
  ];
}

class AppConstants {
  static final messangerKey = GlobalKey<ScaffoldMessengerState>();
  static const argumentName = 'tasksListName';
  static const important = 'important';
  static const task = 'task';
  static const id = 'id';
  static const taskList = 'taskListModel';
}
