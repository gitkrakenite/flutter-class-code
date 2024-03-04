import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/loginController.dart';
import 'package:get/get.dart';

class customTextField extends StatelessWidget {
  final String? hint;
  final Widget? childWidget;
  final Widget? suffixShowcon;
  final bool isPassword;
  final dynamic inputType;
  final TextEditingController? controller; //to track changes

  const customTextField({
    super.key,
    this.hint,
    this.childWidget,
    this.suffixShowcon,
    this.isPassword = false,
    this.inputType = TextInputType.text,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      keyboardType: inputType,
      decoration: InputDecoration(
        prefixIcon: childWidget,
        suffixIcon: suffixShowcon,
        hintText: hint,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
