import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/views/custombutton.dart';
import 'package:flutter_application_1/views/customtext.dart';
import 'package:flutter_application_1/views/customtextfield.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var isPassword = true;

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
              const CustomText(label: "Enter Email", fontSize: 18),
              const SizedBox(height: 10.0),
              const customTextField(
                hint: "Email Address",
                inputType: TextInputType.emailAddress,
                childWidget: Icon(Icons.person, color: Colors.black),
              ),
              const SizedBox(height: 24.0),
              const CustomText(label: "Enter Password", fontSize: 18),
              const SizedBox(height: 10.0),
              customTextField(
                hint: "Password",
                childWidget: const Icon(Icons.lock, color: Colors.black),
                isPassword: isPassword,
                suffixShowcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isPassword = !isPassword;
                    });
                  },
                  icon: Icon(
                    isPassword
                        ? Icons.visibility
                        : Icons.visibility_off_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 12.0),
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
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const CustomText(label: "New Here", fontSize: 13),
                  const SizedBox(width: 5.0),
                  TextButton(
                    onPressed: () {
                      Get.offAndToNamed("/register");
                    },
                    child: const CustomText(
                      label: "Create Account",
                      fontSize: 13,
                      labelColor: primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 200,
                  height: 40,
                  child: CustomButton(
                    label: "Sign In",
                    callback: () {
                      //Get.toNamed("/home"); //allow user to come back here
                      Get.offAndToNamed("/main"); //no back arrow to here
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  //you can create functions here
}
