import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:snackbar_with_getx/controller/qrcode_controller.dart';
import 'package:snackbar_with_getx/drawer.dart';

class QrCodeScreen extends GetView<QrCodeController> {
  static const String id = 'qrcodescreen';

  @override
  Widget build(BuildContext context) {
    Get.put(QrCodeController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Qr Code'),
      ),
      drawer: CommonDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Obx(() => QrImage(
                data: controller.qrCode.value,
              // backgroundColor: Colors.pink,
              // foregroundColor: Colors.white,
            )),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                labelText: 'Email',
              ),
              keyboardType: TextInputType.text,
              controller: controller.qrContextEditingController,
              onChanged: (val) {
                controller.qrCode.value = val;
              },
            ),
            ElevatedButton(
                onPressed: () {
                  controller.scanQr();
                },
                child: Text('Scan QR')
            )
          ],
        ),
      ),
    );
  }
}
