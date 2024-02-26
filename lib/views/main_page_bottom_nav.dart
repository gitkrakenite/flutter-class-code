import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/controllers/bottom_navigation_controller.dart';
import 'package:flutter_application_1/views/calculator.dart';
import 'package:flutter_application_1/views/students.dart';
import 'package:get/get.dart';

//create an array of all your screens
//the order matters
var screens = [
  Text("house"),
  Text("favorite"),
  Calculator(),
  Students(),
];

//we access our controller
//controller will help us rebuild our UI with the clicked screen
// obx wraps only one child and helps rebuild UI even without stateful widgets
MainBottomNavigationController bottomNavigationController =
    Get.put(MainBottomNavigationController());

class MainPageBottomNavigation extends StatelessWidget {
  const MainPageBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      body: SafeArea(
          child: Obx(
        () => Center(
            child: screens[bottomNavigationController.selectedPage.value]),
      )),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.red,
        color: primaryColor,
        items: const [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite,
            color: Colors.white,
          ),
          Icon(
            Icons.calculate,
            color: Colors.white,
          ),
          Icon(
            Icons.people,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          //we just access the updateFunction and give it index
          bottomNavigationController.updateSelectedPage(index);
        },
      ),
    );
  }
}
