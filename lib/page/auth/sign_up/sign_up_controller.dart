import 'dart:developer';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/src/auth/fire_auth_src.dart';
import 'package:todoapp/src/logger/logger_custom.dart';
import 'package:todoapp/util/app_routes.dart';

class SignUpController extends GetxController {
  final formKey = GlobalKey<FormState>();
  String? _email = '';
  String? _password = '';
  String? _name = '';

  void setEmail(String? email) {
    _email = email;
    update();
  }

  void onSaveName(String? name) {
    _name = name;
    update();
  }

  String? validate(String? value) {
    if (GetUtils.isEmail(value!)) return null;
    return "Email noto'g'ri kiritildi";
  }

  String? validatePassword(String? password) {
    if (_password != '') {
      if (_password == password) return null;
      return 'Parollar mos emas';
    }
    if (password!.length >= 8) return null;
    return "Password 8 tadan kam";
  }

  void onSavePassword(String? password) {
    if (_password == '') {
      _password = password;
      update();
    } else if (_password != '') {
      if (_password == password) {
        _password = password;
        update();
      }
    }
  }

  void signUp() async {
    try {
      if (formKey.currentState!.validate()) {
        formKey.currentState!.save();
        if (_email!.isEmpty || _password!.isEmpty) return;
        final user = await FireAuth.signUp(
            email: _email, password: _password, name: _name);
        if (user != null) {
          _email = '';
          _password = '';
          _name = '';
          update();
          Get.offAndToNamed(AppRouteNames.main);
          AppLogger.onLog('Muvofaqqiyatli royxatdan otildi');
        }
      }
    } catch (e) {
      log(e.toString());
    }
  }

  String? get email => _email;
  String? get password => _password;
}
