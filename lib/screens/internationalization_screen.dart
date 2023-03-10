import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snackbar_with_getx/controller/internationalization_controller.dart';
import 'package:snackbar_with_getx/drawer.dart';

class InterNationalizationScreen extends StatelessWidget {
  static const String id = 'internationalizationscreen';

  InternationalizationController internationalizationController = Get.put(InternationalizationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internationalization'),
      ),
      drawer: CommonDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Text(
                  'hello'.tr,
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.pink[800],
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: () {
                    internationalizationController.changeLanguage('hi', 'IN');
                  },
                  child: Text('Hindi')
              ),
            ElevatedButton(
                onPressed: () {
                  internationalizationController.changeLanguage('gu', 'IN');
                },
                child: Text('Gujarati')
            ),
            ElevatedButton(
                onPressed: () {
                  internationalizationController.changeLanguage('en', 'US');
                },
                child: Text('English')
            ),
          ],
        ),
      ),
    );
  }
}
