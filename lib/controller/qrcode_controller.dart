import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class QrCodeController extends GetxController{
  TextEditingController qrContextEditingController = TextEditingController();

  var qrCode = ''.obs;

  String scannedQrCode = '';

  Future<void> scanQr() async{
    try{
      scannedQrCode = await FlutterBarcodeScanner.scanBarcode(
          'Colors.red',
          'Cancel',
          true,
          ScanMode.QR
      );
      if(scannedQrCode != -1) {
        Get.snackbar(
          'Result',
          'Qrcode ${scannedQrCode}',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
      }
    } on PlatformException{}
  }
}