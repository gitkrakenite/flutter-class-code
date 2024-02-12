import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/views/customtext.dart';
import 'package:flutter_application_1/views/customtextfield.dart';

void main(List<String> args) {
  runApp(const HomeWrapper());
}

class HomeWrapper extends StatelessWidget {
  const HomeWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeCard(),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // centerTitle: true,
        actions: const [
          Icon(Icons.refresh),
          SizedBox(
            width: 12.0,
          ),
          Icon(Icons.save),
        ],
        title: const Text(
          "Pizza",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        backgroundColor: primaryColor,
        foregroundColor: appWhiteColor,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Align(
          alignment: Alignment.center,
          child: CustomText(
              label: "Login Details",
              fontSize: 28,
              labelColor: Colors.red,
              textWeight: FontWeight.w700),
        ),
        SizedBox(height: 12.0),
        CustomText(label: "Enter Username", fontSize: 18),
        customTextField(),
        SizedBox(height: 12.0),
        CustomText(label: "Enter Password", fontSize: 18),
        customTextField(),
        SizedBox(height: 12.0),
        ElevatedButton(
            onPressed: () {
              print("Hello");
            },
            style: const ButtonStyle(),
            child: Text("Submit"))
      ]),
    );
  }
}
