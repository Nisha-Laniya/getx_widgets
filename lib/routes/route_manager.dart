
import 'package:flutter/material.dart';
import 'package:snackbar_with_getx/screens/bottomsheet_screen.dart';
import 'package:snackbar_with_getx/screens/call_screen.dart';
import 'package:snackbar_with_getx/screens/internationalization_screen.dart';
import 'package:snackbar_with_getx/screens/qrcode_screen.dart';
import 'package:snackbar_with_getx/screens/reordable_listview_screen.dart';
import 'package:snackbar_with_getx/screens/scratcher_screen.dart';
import 'package:snackbar_with_getx/screens/showdialog_screen.dart';
import 'package:snackbar_with_getx/screens/snackbar_screen.dart';
import 'package:snackbar_with_getx/screens/uppercase_screen.dart';

final Map<String,Widget Function(BuildContext)> routes=
{
  SnackbarScreen.id: (context) => const SnackbarScreen(),
  ShowDialogScreen.id: (context) => const ShowDialogScreen(),
  BottomSheetScreen.id: (context) => const BottomSheetScreen(),
  InterNationalizationScreen.id: (context) => InterNationalizationScreen(),
  UpperCaseScreen.id: (context) => UpperCaseScreen(),
  ReordableListviewScreen.id: (context) => ReordableListviewScreen(),
  QrCodeScreen.id: (context) => QrCodeScreen(),
  CallScreen.id: (context) => CallScreen(),
  ScratcherScreen.id: (context) => ScratcherScreen(),
};