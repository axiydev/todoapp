import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

// ignore: must_be_immutable
class CustomTextField extends GetWidget {
  CustomTextField({
    super.key,
    required this.validator,
    required this.label,
    required this.hintText,
    required this.onSave,
    this.isObscure = false,
  });
  String? Function(String?) validator;
  String? label;
  ValueChanged<String?> onSave;
  String? hintText;
  bool? isObscure;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onSaved: onSave,
      obscureText: isObscure!,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          label: Text(label!),
          hintText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.always),
    );
  }
}
