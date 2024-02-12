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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/du.png", height: 70, width: 70),
            ],
          ),
          const SizedBox(height: 24.0),
          const Align(
            alignment: Alignment.center,
            child: CustomText(
                label: "Login Details",
                fontSize: 28,
                labelColor: primaryColor,
                textWeight: FontWeight.w700),
          ),
          const SizedBox(height: 12.0),
          const CustomText(label: "Enter Username", fontSize: 18),
          const customTextField(),
          const SizedBox(height: 12.0),
          const CustomText(label: "Enter Password", fontSize: 18),
          const customTextField(),
          const SizedBox(height: 12.0),
          ElevatedButton(
              onPressed: () {
                print("Hello");
              },
              style: const ButtonStyle(),
              child: Text("Submit"))
        ]),
      ),
    );
  }
}
