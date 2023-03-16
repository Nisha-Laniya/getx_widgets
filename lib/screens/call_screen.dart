import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:snackbar_with_getx/drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class CallScreen extends StatelessWidget {
  static const String id = 'callscreen';
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Call'),
      ),
      drawer: CommonDrawer(),
      body: Center(
        child: ElevatedButton(
          child: Text('Call'),
          onPressed: ()async {
            // launch('tel: 9636202101');

            // Uri phoneno = Uri.parse('tel:+97798345348734');
            // if (await launchUrl(phoneno)) {
            //     //dialer opened
            // }

            FlutterPhoneDirectCaller.callNumber('+91123456789');
          },
        ),
      ),
    );
  }
}
