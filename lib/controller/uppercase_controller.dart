import 'package:get/get.dart';
import 'package:snackbar_with_getx/models/student.dart';

class UpperCaseController extends GetxController {

  //For individual Observable(Rx) variable
  var student = Student();
  void convertToUpperCase() {
    student.name.value = student.name.value.toUpperCase();
  }
  void converToLowerCase() {
    student.name.value = student.name.value.toLowerCase();
  }

  //For entire class observable
  // var student = Student(name: 'Nisha').obs;
  // void convertToUpperCase() {
  //   student.update((val) {
  //     val?.name = val.name.toString().toUpperCase();
  //   });
  // }
}