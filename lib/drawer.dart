import 'package:flutter/material.dart';
import 'package:snackbar_with_getx/screens/bottomsheet_screen.dart';
import 'package:snackbar_with_getx/screens/call_screen.dart';
import 'package:snackbar_with_getx/screens/draggable_scrollable_sheet_screen.dart';
import 'package:snackbar_with_getx/screens/form_validation_screen.dart';
import 'package:snackbar_with_getx/screens/getstorage_emailvalidation.dart';
import 'package:snackbar_with_getx/screens/image_picker_screen.dart';
import 'package:snackbar_with_getx/screens/internationalization_screen.dart';
import 'package:snackbar_with_getx/screens/password_strength_screen.dart';
import 'package:snackbar_with_getx/screens/qrcode_screen.dart';
import 'package:snackbar_with_getx/screens/reordable_listview_screen.dart';
import 'package:snackbar_with_getx/screens/scratcher_screen.dart';
import 'package:snackbar_with_getx/screens/showdialog_screen.dart';
import 'package:snackbar_with_getx/screens/signature_screen.dart';
import 'package:snackbar_with_getx/screens/snackbar_screen.dart';
import 'package:snackbar_with_getx/screens/stepper_screen.dart';
import 'package:snackbar_with_getx/screens/uppercase_screen.dart';

class CommonDrawer extends StatelessWidget {
  const CommonDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        //Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Snackbar'),
            onTap: () {
              Navigator.pushReplacementNamed(context, SnackbarScreen.id);
            },
          ),
          ListTile(
            title: const Text('Show Dialog'),
            onTap: () {
              Navigator.pushReplacementNamed(context, ShowDialogScreen.id);
            },
          ),
          ListTile(
            title: const Text('Bottom Sheet'),
            onTap: () {
              Navigator.pushReplacementNamed(context, BottomSheetScreen.id);
            },
          ),
          ListTile(
            title: const Text('Internationalization'),
            onTap: () {
              Navigator.pushReplacementNamed(context, InterNationalizationScreen.id);
            },
          ),
          ListTile(
            title: const Text('Uppercase'),
            onTap: () {
              Navigator.pushReplacementNamed(context, UpperCaseScreen.id);
            },
          ),
          ListTile(
            title: const Text('Reordable Listview'),
            onTap: () {
              Navigator.pushReplacementNamed(context, ReordableListviewScreen.id);
            },
          ),
          ListTile(
            title: const Text('Qr Code'),
            onTap: () {
              Navigator.pushReplacementNamed(context, QrCodeScreen.id);
            },
          ),
          ListTile(
            title: const Text('Call'),
            onTap: () {
              Navigator.pushReplacementNamed(context, CallScreen.id);
            },
          ),
          ListTile(
            title: const Text('Scratcher'),
            onTap: () {
              Navigator.pushReplacementNamed(context, ScratcherScreen.id);
            },
          ),
          ListTile(
            title: const Text('Email validation'),
            onTap: () {
              Navigator.pushReplacementNamed(context, EmailValidation.id);
            },
          ),
          ListTile(
            title: const Text('DraggableScrollable'),
            onTap: () {
              Navigator.pushReplacementNamed(context,DraggableScrollableSheetScreen.id);
            },
          ),
          ListTile(
            title: const Text('Signature'),
            onTap: () {
              Navigator.pushReplacementNamed(context,SignatureScreen.id);
            },
          ),
          ListTile(
            title: const Text('Image Picker'),
            onTap: () {
              Navigator.pushReplacementNamed(context,ImagePickerScreen.id);
            },
          ),
          ListTile(
            title: const Text('Stepper'),
            onTap: () {
              Navigator.pushReplacementNamed(context,StepperScreen.id);
            },
          ),
          ListTile(
            title: const Text('Password Strength'),
            onTap: () {
              Navigator.pushReplacementNamed(context,PasswordStrengthScreen.id);
            },
          ),
          ListTile(
            title: const Text('Form validation'),
            onTap: () {
              Navigator.pushReplacementNamed(context,FormValidationScreen.id);
            },
          ),
        ],
      ),
    );
  }
}
