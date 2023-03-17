import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snackbar_with_getx/drawer.dart';
import '../controller/scratcher_controller.dart';
import 'package:scratcher/scratcher.dart';

class ScratcherScreen extends GetView<ScratcherController> {
  static const String id = 'scratcherscreen';
  const ScratcherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ScratcherController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Scratcher'),
      ),
      drawer: CommonDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Scratcher(
              key: controller.scratchKey,
              brushSize: 30,
              threshold: 50,
              color: Colors.red,
              onChange: (value) {
                controller.scratchProgress.value = value;
              },
              onThreshold: () {
                controller.isThresoldReached.value = true;
              },
              child: Container(
                height: 300,
                width: 300,
                child: Center(
                    child: Text(
                  'Nisha',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 60),
                )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Obx(() => Text(
                  "Scratch Progress ${controller.scratchProgress.value.toStringAsFixed(2)}",
                  style: TextStyle(fontSize: 20),
                )),
            SizedBox(
              height: 10,
            ),
            Obx(() => controller.isThresoldReached.value
                      ? Text('Thresold reached')
                      : Text('Thresold not reached'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {
              controller.scratchKey.currentState?.reset(duration: Duration(milliseconds: 2000));
              controller.isThresoldReached.value = false;
            }, child: Text('Reset'))
          ],
        ),
      ),
    );
  }
}
