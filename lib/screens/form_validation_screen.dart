import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snackbar_with_getx/controller/form_validation_controller.dart';
import 'package:snackbar_with_getx/drawer.dart';

class FormValidationScreen extends GetView<FormValidationController> {
  static const String id = '/formvalidation';
  const FormValidationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(FormValidationController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Validation'),
      ),
      drawer: CommonDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: controller.loginFormKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
                controller: controller.emailController,
                onSaved: (value) {
                  controller.email= value!;
                },
                validator: (value) {
                  return controller.validateEmail(value!);
                },
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                controller: controller.passwordController,
                onSaved: (value) {
                  controller.password= value!;
                },
                validator: (value) {
                  return controller.validatePassword(value!);
                },
              ),
              SizedBox(height: 40,),
              ElevatedButton(onPressed: () {
                controller.checkLogin();
              }, child: Text('Login'))
            ],
          ),
        ),
      ),
    );
  }
}
