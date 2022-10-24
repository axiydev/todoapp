import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:todoapp/page/auth/sign_in/sign_in_binding.dart';
import 'package:todoapp/page/auth/sign_in/sign_in_view.dart';
import 'package:todoapp/page/auth/sign_up/sign_up_binding.dart';
import 'package:todoapp/page/auth/sign_up/sign_up_view.dart';
import 'package:todoapp/page/main/main_bindings.dart';
import 'package:todoapp/page/main/main_view.dart';
import 'package:todoapp/util/app_routes.dart';

class AppRouteUtils {
  static final List<GetPage> pages = [
    ///Main
    GetPage(
        name: AppRouteNames.main,
        page: () => MainView(),
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
        binding: SignUpBinding())
  ];
}

class AppConstants {
  static final messangerKey = GlobalKey<ScaffoldMessengerState>();
}
