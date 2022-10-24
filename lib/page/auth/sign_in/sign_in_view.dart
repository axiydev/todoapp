import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:todoapp/page/auth/sign_in/sign_in_controller.dart';
import 'package:todoapp/page/auth/sign_up/widgets/custom_field_widget.dart';
import 'package:todoapp/util/app_routes.dart';

class SignInView extends GetView<SignInController> {
  SignInView({super.key});
  @override
  final controller = Get.put(SignInController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: 390.w,
          child: GetBuilder<SignInController>(
              init: controller,
              builder: (_) {
                return Form(
                  key: controller.formSignInKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.all(8.0.w),
                          child: CustomTextField(
                            onSave: (value) => controller.setEmail(value),
                            validator: (value) => controller.validate(value),
                            label: 'Email',
                            hintText: 'example@gmail.com',
                          )),
                      Padding(
                          padding: EdgeInsets.all(8.0.w),
                          child: CustomTextField(
                            onSave: (value) => controller.onSavePassword(value),
                            validator: (value) =>
                                controller.validatePassword(value),
                            label: 'Password',
                            hintText: 'password',
                            isObscure: true,
                          )),
                      Padding(
                        padding: EdgeInsets.all(8.0.w),
                        child: CupertinoButton.filled(
                            onPressed: () => controller.signIn(),
                            child: const Text('Sign In')),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0.w),
                        child: TextButton(
                            onPressed: () => Get.toNamed(AppRouteNames.signUp),
                            child: const Text('Have not you an account?')),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
