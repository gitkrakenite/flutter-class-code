import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/controllers/calculatorController.dart';
import 'package:flutter_application_1/views/customtext.dart';
import 'package:flutter_application_1/views/customtextfield.dart';
import 'package:get/get.dart';

class Calculator extends StatelessWidget {
  //variables
  TextEditingController firstController = TextEditingController();
  TextEditingController secController = TextEditingController();

  //to access the state we initialize the constructor

  CalculatorController calculatorController = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomText(label: "Enter a", fontSize: 24.0),
              customTextField(
                inputType: TextInputType.number,
                controller: firstController,
                hint: "Enter first value",
              ),
              const SizedBox(
                height: 24,
              ),
              const CustomText(label: "Enter b", fontSize: 24.0),
              customTextField(
                inputType: TextInputType.number,
                controller: secController,
                hint: "Enter first value",
              ),
              const SizedBox(
                height: 24,
              ),
              // CustomButton(label: "Calculate", callback: () {})

              MaterialButton(
                onPressed: () {
                  //get the values and convert to double from string
                  double a = double.parse(firstController.text);
                  double b = double.parse(secController.text);

                  calculatorController.updateValues(a, b);

                  double s = a + b;
                  calculatorController.updateSum(s); //we update the state
                },
                height: 50,
                color: primaryColor,
                child: const Text("Calculate"),
              ),
              const SizedBox(
                height: 24,
              ),

              // ACCESS VALUE OF STATE VARIABLE (.sum.value)
              //NEXT we have Obx recreating the widget so it shows on UI. we tell flutter to recreate

              Obx(
                () => CustomText(
                    label:
                        "Answer of ${calculatorController.firstNum.value} + ${calculatorController.secNum.value} : ${calculatorController.sum.value}",
                    fontSize: 24.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
