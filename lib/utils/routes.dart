import 'package:flutter_application_1/views/calculator.dart';
import 'package:flutter_application_1/views/home.dart';
import 'package:flutter_application_1/views/login.dart';
import 'package:flutter_application_1/views/registration.dart';
import 'package:get/get.dart';

class Routes {
  static var routes = [
    GetPage(name: "/", page: () => Login()),
    GetPage(name: "/register", page: () => RegistrationPage()),
    GetPage(name: "/calculator", page: () => Calculator()),
    GetPage(name: "/home", page: () => HomePage()),
  ];
}
