import 'package:flutter/material.dart';
import 'package:snackbar_with_getx/controller/uppercase_controller.dart';
import 'package:snackbar_with_getx/drawer.dart';
import 'package:get/get.dart';

class UpperCaseScreen extends StatelessWidget {
  static const String id = 'uppercasescreen';

  UpperCaseController upperCaseController = Get.put(UpperCaseController());
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Uppercase with getx'),
      ),
      drawer: CommonDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text(
                  upperCaseController.student.name.toString(),
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.pink[800],
                  ),
              );
            }),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  upperCaseController.convertToUpperCase();
                },
                child: Text('UpperCase')
            ),
            ElevatedButton(
                onPressed: () {
                  upperCaseController.converToLowerCase();
                },
                child: Text('LowerCase')
            ),
          ],
        ),
      ),
    );
  }
}
