import 'package:flutter/material.dart';

import '../drawer.dart';

class DefaultScreen extends StatelessWidget {
  const DefaultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx'),
      ),
      body: Center(child: Text('Some Widgets with getx',style: TextStyle(fontSize: 30),)),
      drawer: CommonDrawer(),
    );
  }
}
