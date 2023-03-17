import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {

  var selectedImagePath = ''.obs;
  var selectedImageSize = ''.obs;

  void getImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if(pickedFile != null) {
      selectedImagePath.value = pickedFile.path;
      selectedImageSize.value = ((File(selectedImageSize.value)).lengthSync()/1024/1024).toStringAsFixed(2) + " Mb";

    } else {
      Get.snackbar(
          'Error',
          'No Image Selected',
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
          backgroundColor: Colors.red
      );
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
}