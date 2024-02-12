import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/views/custombutton.dart';
import 'package:flutter_application_1/views/customtext.dart';
import 'package:flutter_application_1/views/customtextfield.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // centerTitle: true,
        // actions: const [
        //   Icon(Icons.refresh),
        //   SizedBox(
        //     width: 12.0,
        //   ),
        //   Icon(Icons.save),
        // ],
        // title: const Text(
        //   "Pizza",
        //   style: TextStyle(fontWeight: FontWeight.w600),
        // ),
        backgroundColor: appWhiteColor,
        foregroundColor: appWhiteColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                  textWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 24.0),
              const CustomText(label: "Enter Username", fontSize: 18),
              const SizedBox(height: 10.0),
              const customTextField(
                hint: "Phone or Email",
                childWidget: Icon(Icons.person, color: Colors.black),
              ),
              const SizedBox(height: 24.0),
              const CustomText(label: "Enter Password", fontSize: 18),
              const SizedBox(height: 10.0),
              const customTextField(
                hint: "Password",
                childWidget: Icon(Icons.lock, color: Colors.black),
                suffixShowcon: Icon(Icons.visibility, color: Colors.black),
                isPassword: true,
              ),
              const SizedBox(height: 24.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const CustomText(label: "Forgot Password", fontSize: 13),
                  const SizedBox(width: 5.0),
                  TextButton(
                    onPressed: () {},
                    child: const CustomText(
                      label: "Recover",
                      fontSize: 13,
                      labelColor: primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24.0),
              const Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 200,
                  height: 40,
                  child: CustomButton(
                    label: "Login Now",
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
