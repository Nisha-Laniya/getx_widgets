import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:scratcher/scratcher.dart';

class ScratcherController extends GetxController {
  var scratchProgress = 0.0.obs;
  var isThresoldReached = false.obs;
  final scratchKey = GlobalKey<ScratcherState>();
}