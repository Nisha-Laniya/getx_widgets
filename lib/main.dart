import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snackbar_with_getx/constants/messages.dart';
import 'package:snackbar_with_getx/drawer.dart';
import 'package:snackbar_with_getx/routes/route_manager.dart';
import 'package:snackbar_with_getx/screens/default_screen.dart';
import 'package:snackbar_with_getx/screens/snackbar_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      translations: Messages(),
      locale: Locale('en','US'), //default locale // To get device locale Get.deviceLocale,
      fallbackLocale: Locale('en', 'US'),
        home: DefaultScreen()
    );
  }
}
