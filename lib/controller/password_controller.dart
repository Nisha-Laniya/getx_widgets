import 'package:get/get.dart';

class PasswordController extends GetxController {
  var password = ''.obs;
  var displayText = 'Enter a password'.obs;
  var passwordStrength = 0.0.obs;
  RegExp numRegExpress = RegExp(r".*[0-9].*");
  RegExp letterRegexpress = RegExp(r".*[A-Za-z].*");

  void checkPasswordStrength(String value) {
    password.value = value.trim();
    if(password.value.isEmpty) {
      passwordStrength.value = 0.0;
      displayText.value = 'Enter a Password';
    }
    else if(password.value.length<6) {
      passwordStrength.value = 1/4;
      displayText.value = 'Password too short';
    }
    else if(password.value.length<8) {
      passwordStrength.value = 2/4;
      displayText.value = 'Password not strong';
    }
    else {
      if(!letterRegexpress.hasMatch(password.value) || !numRegExpress.hasMatch(password.value)) {
        passwordStrength.value  = 3/4;
        displayText.value = "Password strong";
      } else {
        passwordStrength.value  = 1;
        displayText.value = "Password strongest";
      }
    }
  }
}