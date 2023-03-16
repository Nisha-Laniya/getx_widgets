import 'package:get/get.dart';

class ReordableListviewController extends GetxController{
  List<String> myfav = ['Java','Flutter','Laravel','Android','React Js','Vue js'].obs;

  void reorder(oldIndex, newIndex) {
      if(newIndex>oldIndex) {
        newIndex -= 1;
      }
      final items = myfav.removeAt(oldIndex);
      myfav.insert(newIndex, items);
  }
}