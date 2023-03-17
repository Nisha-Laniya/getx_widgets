import 'package:get/get.dart';

class DraggableController extends GetxController {
  var isSelected = false.obs;
  List<bool> selected = List.generate(40, (i) => false).obs;

  void selectedItem() {
    isSelected.value = true;
  }
}