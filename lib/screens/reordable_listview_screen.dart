import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snackbar_with_getx/controller/reordable_lisview_controller.dart';
import 'package:snackbar_with_getx/drawer.dart';

class ReordableListviewScreen extends GetView<ReordableListviewController> {
  static const String id = 'reordablelistviewscreen';
  const ReordableListviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ReordableListviewController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Reordable listview'),
      ),
      drawer: CommonDrawer(),
      body: Obx(() => ReorderableListView(
          children:controller.myfav.map((e) => Container(
            margin: EdgeInsets.only(left: 16,right: 16,top: 8),
            padding: EdgeInsets.all(16),
            key: ValueKey(e),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.lightGreen
            ),
            child: Text(
                e,
                style: TextStyle(fontSize: 18,color: Colors.white),
            ),
          )).toList(),
          onReorder: (oldIndex,newIndex) {
              controller.reorder(oldIndex,newIndex);
          }
      )),
    );
  }

}
