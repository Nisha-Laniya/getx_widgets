import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snackbar_with_getx/drawer.dart';

class SnackbarScreen extends StatelessWidget {
   static const String id = 'snackbarscreen';
   const SnackbarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Snackbar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text('Show Snackbar'),
                onPressed: () {
                  Get.snackbar(
                    "Snackbar title",
                    'This is Snackbar message',
                    snackPosition: SnackPosition.BOTTOM,
                    // titleText: Text('Another Title'),
                    // messageText: Text('This is another message', style: TextStyle(color: Colors.red),)
                    colorText: Colors.white,
                    backgroundColor: Colors.lightGreen,
                    borderRadius: 30,
                    margin: EdgeInsets.all(15),
                    // maxWidth: 100,
                    animationDuration: Duration(milliseconds: 3000),
                    backgroundGradient: LinearGradient(colors: [
                      Colors.red,
                      Colors.blueGrey
                    ]),
                    //While using border color ensure you are using border width otherwise error will be generated
                    borderColor: Colors.purple,
                    borderWidth: 4,
                    // boxShadows:[
                    //   BoxShadow(
                    //     color: Colors.yellow,
                    //     offset: Offset(30,50),
                    //     spreadRadius: 20,
                    //     blurRadius: 8
                    //   )
                    // ]
                    isDismissible: true,
                    dismissDirection: DismissDirection.horizontal,
                    // forwardAnimationCurve: Curves.bounceInOut,
                    duration: Duration(milliseconds: 8000),
                    icon: Icon(
                      Icons.account_circle_sharp,
                      color: Colors.white,
                    ),
                    shouldIconPulse: false,
                    leftBarIndicatorColor: Colors.green,
                    mainButton: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            primary: Colors.red // Text Color
                        ),
                        child: Text(
                          'Retry',
                          style: TextStyle(color: Colors.white),
                        )),
                    onTap: (val) {
                      print('Snackbar clicked');
                    },
                    overlayBlur: 5,
                    overlayColor: Colors.grey,
                    padding: EdgeInsets.all(50),
                    showProgressIndicator: true,
                    progressIndicatorBackgroundColor: Colors.lightBlueAccent,
                    progressIndicatorValueColor: AlwaysStoppedAnimation(Colors.white),
                    reverseAnimationCurve: Curves.bounceInOut,
                    snackbarStatus: (val) {
                      print(val);
                    },
                    // userInputForm: Form(child: Row(children: [Expanded(child: TextFormField())],))
                  );
                },
              )
            ],
          ),
        ),
        drawer: CommonDrawer(),
      );
  }
}
