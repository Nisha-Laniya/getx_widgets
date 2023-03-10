import 'package:flutter/material.dart';
import 'package:snackbar_with_getx/drawer.dart';
import 'package:get/get.dart';

class BottomSheetScreen extends StatelessWidget {
  static const String id = 'bottomsheetscreen';
  const BottomSheetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet'),
      ),
      drawer: CommonDrawer(),
      body: Center(
        child: ElevatedButton(
          child: Text('Show Bottomsheet'),
          onPressed: () {
            Get.bottomSheet(
              Container(
                child: Wrap(
                  children: [
                    ListTile(
                      leading: Icon(Icons.wb_sunny_outlined),
                      title: Text('Light Theme'),
                      onTap: () {
                        Get.changeTheme(ThemeData.light());
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.wb_sunny),
                      title: Text('Dark Theme'),
                      onTap: () {
                        Get.changeTheme(ThemeData.dark());
                      },
                    ),
                  ],
                ),
              ),
              // barrierColor: Colors.lightGreen.shade100,
              backgroundColor: Colors.pink[800],
              isDismissible: false,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                  color: Colors.white,
                  style: BorderStyle.solid,
                  width: 2,
                )
              ),
              // enableDrag: false,
            );
          },
        ),
      ),
    );
  }
}
