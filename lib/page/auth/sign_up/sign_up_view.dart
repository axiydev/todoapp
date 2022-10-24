import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:todoapp/page/auth/sign_up/sign_up_controller.dart';
import 'package:todoapp/page/auth/sign_up/widgets/custom_field_widget.dart';
import 'package:todoapp/util/app_routes.dart';

// ignore: must_be_immutable
class SignUpView extends GetView<SignUpController> {
  SignUpView({super.key});
  @override
  var controller = Get.put(SignUpController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: 390.w,
          child: GetBuilder<SignUpController>(
              init: controller,
              builder: (_) {
                return Form(
                  key: controller.formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.all(8.0.w),
                          child: CustomTextField(
                            onSave: (value) => controller.onSaveName(value),
                            validator: (value) {
                              return null;
                            },
                            label: 'Name',
                            hintText: 'Name',
                          )),
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
                          child: CustomTextField(
                            onSave: (value) => controller.onSavePassword(value),
                            validator: (value) =>
                                controller.validatePassword(value),
                            label: 'Confirm Password',
                            hintText: 'Confirm password',
                            isObscure: true,
                          )),
                      Padding(
                        padding: EdgeInsets.all(8.0.w),
                        child: CupertinoButton.filled(
                            onPressed: () => controller.signUp(),
                            child: const Text('Sign Up')),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0.w),
                        child: TextButton(
                            onPressed: () => Get.toNamed(AppRouteNames.signIn),
                            child: const Text('already have an account')),
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
