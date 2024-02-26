import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

//the variable whose state we are tracking

class CalculatorController extends GetxController {
  var sum = 0.0.obs; // we need to track the total

  var firstNum = 0.0.obs;
  var secNum = 0.0.obs;

  //function to update the value of sum when it changes
  updateSum(newSum) {
    sum.value = newSum; // update the variable above with the new value
  }

  //function to update a and b value to add
  updateValues(newFirstNum, newSecNum) {
    this.firstNum.value = newFirstNum;
    this.secNum.value = newSecNum;
  }
}
