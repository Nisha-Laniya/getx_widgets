import 'package:flutter/material.dart';
import 'package:snackbar_with_getx/screens/bottomsheet_screen.dart';
import 'package:snackbar_with_getx/screens/internationalization_screen.dart';
import 'package:snackbar_with_getx/screens/reordable_listview_screen.dart';
import 'package:snackbar_with_getx/screens/showdialog_screen.dart';
import 'package:snackbar_with_getx/screens/snackbar_screen.dart';
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
        // Important: Remove any padding from the ListView.
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
        ],
      ),
    );
  }
}
