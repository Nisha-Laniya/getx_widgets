import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snackbar_with_getx/controller/password_controller.dart';
import 'package:snackbar_with_getx/drawer.dart';

class PasswordStrengthScreen extends GetView<PasswordController> {
  static const String id = 'passwordstrengthscreen';
  const PasswordStrengthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(PasswordController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Password Strength'),
      ),
      drawer: CommonDrawer(),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                controller.checkPasswordStrength(value);
              },
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Password'),
            ),
            SizedBox(
              height: 20,
            ),
            Obx(() => LinearProgressIndicator(
              value: controller.passwordStrength.value,
              backgroundColor: Colors.grey[300],
              color: controller.passwordStrength.value <= 1 / 4
                  ? Colors.red
                  : controller.passwordStrength.value == 2 / 4
                  ? Colors.amber
                  : controller.passwordStrength.value == 3 / 4
                  ? Colors.deepPurpleAccent
                  : Colors.green,
            ),),
            SizedBox(height: 20,),
            Obx(() =>  Text(controller.displayText.value))
          ],
        ),
      ),
    );
  }
}
