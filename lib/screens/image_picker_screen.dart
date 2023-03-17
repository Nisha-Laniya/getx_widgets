import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:snackbar_with_getx/controller/image_picker_controller.dart';
import 'package:snackbar_with_getx/drawer.dart';

class ImagePickerScreen extends StatelessWidget {
  static const String id = 'imagepickerscreen';
   ImagePickerScreen({Key? key}) : super(key: key);

  ImagePickerController controller = Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Image pick'),
        ),
        drawer: CommonDrawer(),
        body: Padding(
          padding: EdgeInsets.only(top: 16),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Obx(() => controller.selectedImagePath.value == ''
                      ? Text('Select Image from Camera or gallery', style: TextStyle(fontSize: 20),)
                      : Image.file(File(controller.selectedImagePath.value))
                  ),
                  // Obx(() => Text( controller.selectedImageSize.value == ''
                  //     ? ''
                  //     : controller.selectedImageSize.value,
                  //       style: TextStyle(fontSize: 20),
                  //   )
                  // ),
                  ElevatedButton(
                      onPressed: () {
                        controller.getImage(ImageSource.camera);
                      },
                      child: Text('Camera')
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(
                      onPressed: () {
                        controller.getImage(ImageSource.gallery);
                      },
                      child: Text('Gallery')
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
