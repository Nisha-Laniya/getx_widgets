import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:snackbar_with_getx/drawer.dart';

class EmailValidation extends StatelessWidget {
  static const String id = 'emailvalidation';
  EmailValidation({Key? key}) : super(key: key);

  var emailController = TextEditingController();
  var storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Get storage & email validation'),
        ),
        drawer: CommonDrawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter Email'
                  ),
                  controller: emailController,
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  if(GetUtils.isEmail(emailController.text)) {
                    storage.write('Email', emailController.text);
                  } else {
                    Get.snackbar(
                      'Invalid Email',
                      'Please enter email in valid format',
                      colorText: Colors.white,
                      backgroundColor: Colors.black,
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  }
                }, child: Text('Write'),
              ),
              ElevatedButton(
                onPressed: () {
                  print('The email is ${storage.read('Email')}');
                }, child: Text('Read'),
              ),
            ],
          ),
        )
    );
  }
}
