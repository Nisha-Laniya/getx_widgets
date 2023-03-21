import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snackbar_with_getx/controller/stepper_controller.dart';
import 'package:snackbar_with_getx/drawer.dart';

class StepperScreen extends GetView<StepperController> {
  static const String id = 'stepperscreen';
  const StepperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(StepperController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Stepper'),
      ),
      drawer: CommonDrawer(),
      body: Obx(
        () => Stepper(
          type: StepperType.horizontal,
          steps: buildStep(),
          currentStep: controller.currentStep.value,
          onStepContinue: () {
            if (controller.currentStep.value == buildStep().length - 1) {
              print('Send data to server');
            } else {
              controller.currentStep.value++;
            }
          },
          onStepCancel: () {
            controller.currentStep.value == 0
                ? null
                : controller.currentStep.value--;
          },
          onStepTapped: (index) {
            controller.currentStep.value = index;
          },
          controlsBuilder: (context, ControlsDetails controls) {
            return Container(
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      child: Text(controller.currentStep.value == buildStep().length-1 ? 'Submit' : 'Next'),
                      onPressed: controls.onStepContinue,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  if(controller.currentStep.value != 0)
                  Expanded(
                    child: ElevatedButton(
                      child: Text('Previous'),
                      onPressed: controls.onStepCancel,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  List<Step> buildStep() {
    return [
      Step(
          title: Text('Personal'),
          content: Container(
            height: 100,
            color: Colors.red,
          ),
          isActive: controller.currentStep.value >= 0,
          state: controller.currentStep.value > 0 ? StepState.complete : StepState.indexed
      ),
      Step(
          title: Text('Business'),
          content: Container(
            height: 100,
            color: Colors.green,
          ),
          isActive: controller.currentStep.value >= 1,
          state: controller.currentStep.value > 1 ? StepState.complete : StepState.indexed
      ),
      Step(
          title: Text('Confirm'),
          content: Container(
            height: 100,
            color: Colors.deepPurpleAccent,
          ),
          isActive: controller.currentStep.value >= 2,
      ),
    ];
  }
}
