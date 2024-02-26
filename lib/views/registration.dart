import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/views/custombutton.dart';
import 'package:flutter_application_1/views/customtext.dart';
import 'package:flutter_application_1/views/customtextfield.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
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
                  label: "Please Register",
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
              // phone data
              const SizedBox(height: 24.0),
              const CustomText(label: "Enter Phone", fontSize: 18),
              const SizedBox(height: 10.0),
              const customTextField(
                hint: "+254 ",
                inputType: TextInputType.phone,
                childWidget: Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 24.0),
              const CustomText(
                label: "Create Password",
                fontSize: 18,
              ),
              const SizedBox(height: 10.0),
              customTextField(
                hint: "Password",
                childWidget: Icon(Icons.lock, color: Colors.black),
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
                      color: Colors.black),
                ),
              ),
              const SizedBox(height: 24.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const CustomText(
                      label: "Already have account ?", fontSize: 13),
                  const SizedBox(width: 5.0),
                  TextButton(
                    onPressed: () {
                      Get.offAndToNamed("/");
                    },
                    child: const CustomText(
                      label: "Sign in",
                      fontSize: 13,
                      labelColor: primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24.0),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 200,
                  height: 40,
                  child: CustomButton(
                    label: "Create Account",
                    callback: () {
                      Get.offAndToNamed("/home");
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
