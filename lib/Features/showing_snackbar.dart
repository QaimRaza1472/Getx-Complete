import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MySnackBar extends StatelessWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Show SnackBar"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
                onPressed:(){
                  Get.snackbar(
                      "Snackbar Title",
                      "This will be SnackBar Message",
                    snackPosition: SnackPosition.BOTTOM,
                 /*   titleText: Text("Another Title"),
                    messageText: Text('Another Message',
                    style: TextStyle(
                      color: Colors.yellow,
                    ),
                    ),*/
                    colorText: Colors.red,
                    backgroundColor: Colors.black,
                    borderRadius: 30,
                    margin: const EdgeInsets.all(10),
                   //   maxWidth: 100
                   //  animationDuration: const Duration(microseconds: 3000 ),
                    backgroundGradient: const LinearGradient(
                        colors: [
                          Colors.red,
                          Colors.green,
                        ]
                    ),
                    borderColor: Colors.purple,
                    borderWidth: 1,
                    boxShadows: [
                      const BoxShadow(
                        color: Colors.yellow,
                        offset: Offset(30, 50),
                        spreadRadius: 20,
                        blurRadius: 8,
                      ),
                    ],
                    isDismissible: true,
                    dismissDirection: DismissDirection.horizontal,
                    forwardAnimationCurve: Curves.bounceInOut,
                    //duration: Duration(microseconds: 500),
                    icon: const Icon(Icons.send,
                    color: Colors.white,
                    ),
                    shouldIconPulse: false,
                    leftBarIndicatorColor: Colors.white,
                    mainButton: TextButton(
                        onPressed: (){
                          print("Retry Clicked");
                        },
                        child: Text("Retry"),
                    ),
                    onTap: (value){
                      print("Snackbar Clicked");

                    },
                    overlayBlur: 2,
                   // overlayColor: Colors.grey.withOpacity(0.5),
                  //  showProgressIndicator: true,
                    snackbarStatus: (value){
                      print(value);

                    }
                  );
                },
              child: const Text("Show SnackBar"),
            ),










          ],
        ),
      ),
    );
  }
}
