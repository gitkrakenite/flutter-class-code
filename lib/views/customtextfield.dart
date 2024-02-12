import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  final String? hint;
  final Widget? childWidget;
  final Widget? suffixShowcon;
  final bool isPassword;

  const customTextField({
    super.key,
    this.hint,
    this.childWidget,
    this.suffixShowcon,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
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
