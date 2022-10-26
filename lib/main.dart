import 'package:device_preview/device_preview.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:todoapp/page/auth/sign_in/sign_in_binding.dart';
import 'package:todoapp/page/auth/sign_in/sign_in_view.dart';
import 'package:todoapp/page/main/main_view.dart';
import 'package:todoapp/src/auth/fire_auth_src.dart';
import 'package:todoapp/util/app_consts.dart';
import 'package:todoapp/util/app_setup.dart';

/*
Created by Axmadjon Isaqov on 15:05:37 21.10.2022
© 2022 @axi_dev 
*/
/*
Theme:::To Do App
*/
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppSetup.setup;
  runApp(DevicePreview(enabled: false, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => child!,
      child: GetMaterialApp(
        defaultTransition: Transition.native,
        scaffoldMessengerKey: AppConstants.messangerKey,
        useInheritedMediaQuery: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        builder: DevicePreview.appBuilder,
        getPages: AppRouteUtils.pages,
        home: StreamBuilder<User?>(
          stream: FireAuth.auth.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CupertinoActivityIndicator(),
              );
            }
            // ignore: unrelated_type_equality_checks
            if (snapshot.connectionState == ConnectionState.active) {
              if (snapshot.hasData) {
                return MainView();
              } else {
                return SignInView();
              }
            }
            return SignInView();
          },
        ),
        initialBinding: SignInBinding(),
      ),
    );
  }
}
