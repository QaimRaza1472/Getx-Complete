import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowDialog1 extends StatelessWidget {
  const ShowDialog1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Show Dialog"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
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
                  onCancel: () {},
                  onConfirm: () {},
                  buttonColor: Colors.black,

                  cancel: const Text(
                    "Cancels",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 17,
                    ),
                  ),
                  confirm: const Text(
                    "Confirm",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text(
                        "Action-1",
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Action-2",
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
