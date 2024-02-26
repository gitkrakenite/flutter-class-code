import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Center(
              child: Text("Hello World"),
            ),
            MaterialButton(
              onPressed: () {
                Get.toNamed("/calculator"); //allow user to come back here
                //Get.offAndToNamed("/home"); //no back arrow to here
              },
              height: 50,
              color: primaryColor,
              minWidth: double.maxFinite,
              child: const Text(
                "Calculator",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
