import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/login.dart';

void main(List<String> args) {
  runApp(const HomeWrapper());
}

class HomeWrapper extends StatelessWidget {
  const HomeWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
