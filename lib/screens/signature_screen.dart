import 'package:flutter/material.dart';
import 'package:signature/signature.dart';
import 'package:get/get.dart';
import 'package:snackbar_with_getx/drawer.dart';

import '../controller/signature_controller.dart';

class SignatureScreen extends GetView<SignatureScreenController> {
  static const String id = 'signaturescreen';
  const SignatureScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SignatureScreenController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Signature Screen'),
      ),
      drawer: const CommonDrawer(),
      body: Column(
        children: [
          Obx(() => Padding(
            padding: const EdgeInsets.only(top: 60,left: 20,right: 20),
            child: Signature(
              height: MediaQuery.of(context).size.height * 0.6,
              controller: controller.signatureController,
              backgroundColor: controller.padColor.value,
            ),
          )),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.selectedPadColor();
                  },
                  child: Text('Pad Color',style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.selectedPenColor();
                  },
                  child: Text('Pen Color',style: TextStyle(color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.exportSignature();
                  },
                  child: Text('Export',style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.signatureController.clear();
                  },
                  child: Text('Clear',style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
