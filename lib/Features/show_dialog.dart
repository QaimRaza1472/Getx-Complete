import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowDialog1 extends StatelessWidget {
  const ShowDialog1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed:(){
                Get.defaultDialog(
                  title: "Dialog Title",
                  titleStyle: const TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                  ),
                  middleText: "This is middle text",
                //  backgroundColor: Colors.yellow,
                  radius: 50,
          /*        content: Row(
                    children: const [
                      CircularProgressIndicator(
                        color: Colors.red,

                      ),
                      SizedBox(width: 14,),
                      Expanded(
                          child: Text("Data Loading"),
                      ),
                    ],
                  ),
                  */

                  textCancel: "Cancel",
                  cancelTextColor: Colors.black,
                  textConfirm: "Confirm",
                  confirmTextColor: Colors.white,
                  onCancel: (){},
                  onConfirm: (){},
                  buttonColor: Colors.black,

                  cancel: Text("Cancels",
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 17,
                  ),

                  ),
                  confirm: Text("Confirm",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),

                  ),
                  actions: [
                    RaisedButton(
                        onPressed: (){
                          Get.back();
                        },
                      child: Text("Action-1",
                      ),

                    ),
                    RaisedButton(
                      onPressed: (){
                      },
                      child: Text("Action-2",
                      ),
                    ),
                  ],
                  barrierDismissible: false,










                );
              },
              child: const Text("Show Dialog"),
            ),
          ],
        ),
      ),
    );
  }
}
