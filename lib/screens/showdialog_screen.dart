import 'package:flutter/material.dart';
import 'package:snackbar_with_getx/drawer.dart';
import 'package:get/get.dart';

class ShowDialogScreen extends StatelessWidget {
  static const String id = 'showdialogscreen';
  const ShowDialogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Dialog'),
      ),
      drawer: CommonDrawer(),
      body: Center(
        child: ElevatedButton(
          child: Text('Show Dialog'),
          onPressed: () {
            // Get.defaultDialog();
            Get.defaultDialog(
              title: 'Dialog title',
              titleStyle: TextStyle(color: Colors.lightBlueAccent),
              middleText: 'This is Dialog',
              middleTextStyle: TextStyle(color: Colors.orange),
              backgroundColor: Colors.black,
              radius: 50,

              //To customize middle text
              content: Row(
                children: [
                  CircularProgressIndicator(),
                  SizedBox(width: 16,),
                  Expanded(child: Text('data load',style: TextStyle(color: Colors.lightBlueAccent),))
                ],
              ),

              //default cancel and confirm action
              textCancel: 'Cancel',
              cancelTextColor: Colors.white,
              textConfirm: 'Confirm',
              confirmTextColor: Colors.red,
              onCancel: () {},
              onConfirm: () {},

              //color for default cancel and confirm button
              buttonColor: Colors.green,

              //customize default cancel and confirm(It is override default cancel and confirm)
              cancel: Text('Cancels',style: TextStyle(color: Colors.lightBlueAccent),),
              confirm: Text('Confirms',style: TextStyle(color: Colors.lightBlueAccent),),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text('Action 1'))
              ],
              barrierDismissible: false,
            );
          },
        ),
      ),
    );
  }
}
