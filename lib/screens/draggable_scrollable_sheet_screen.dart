import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snackbar_with_getx/controller/draggable_controller.dart';
import 'package:snackbar_with_getx/drawer.dart';

class DraggableScrollableSheetScreen extends GetView<DraggableController> {
  static const String id = 'draggablescrollablesheet';
  const DraggableScrollableSheetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(DraggableController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Draggable scrollable sheet'),
      ),
      drawer: CommonDrawer(),
      body: Stack(
        children: [
          Container(
            width: context. width,
            height: context.height,
            color: Colors.pink[800],
            child: const Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 20),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Draggable Scrollable sheet demo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          DraggableScrollableSheet(
            builder: (context, scrollController) {
              return Padding(
                padding: EdgeInsets.all(16),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return Obx(() => Container(
                        color:
                        controller.selected[index] ? Colors.blue : null,
                        child: (ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.lightBlueAccent,
                            child: Text(
                              index.toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          title: Text(
                            'Index position is $index',
                            style: TextStyle(
                                color: controller.selected[index]
                                    ? Colors.white
                                    : Colors.black),
                          ),
                          selected: controller.selected[index],
                          onTap: () => controller.selected[index] =
                          !controller.selected[index],
                        )),
                      ));
                    },
                    itemCount: 40,
                    controller: scrollController,
                  ),
                ),
              );
            },

            //minchildsize < = initialChildSize

            //initial size of the sheet when app is opened
            //default value 0.5
            initialChildSize: .1,

            //minimum size to which sheet can be dropped down
            //default value .25
            minChildSize: .1,

            //max size to which sheet can be draggged up
            //default value 1.0
            maxChildSize: 0.9,
          )
        ],
      ),
    );
  }
}
