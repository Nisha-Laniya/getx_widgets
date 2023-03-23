import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FormValidationController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  late TextEditingController emailController, passwordController;
  var email = '';
  var password = '';

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  String? validateEmail(String value) {
    if(!GetUtils.isEmail(value)) {
      return "Provide Valid Email";
    }
    return null;
  }

  String? validatePassword(String value) {
    if(value.length<=6) {
      return "Password must be of 6 charcter";
    }
    return null;
  }

  void checkLogin() {
    final isValid = loginFormKey.currentState!.validate();
    if(!isValid) {
      return;
    }
    loginFormKey.currentState!.save();
  }
}