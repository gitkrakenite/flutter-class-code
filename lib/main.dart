import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(const HomeWrapper());
}

class HomeWrapper extends StatelessWidget {
  const HomeWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      getPages: Routes.routes,
    );
  }
}
