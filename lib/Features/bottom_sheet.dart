import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheet1 extends StatelessWidget {
  const BottomSheet1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Bottom Sheet"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              onPressed: () {
                Get.changeTheme(ThemeData.dark());
                print("Hello Button Pressed");
              },
              child: Container(
                  height: 30,
                  width: 110,
                  color: Colors.cyan,
                  child: const Center(child: Text("Change Theme"))),
            ),
            RaisedButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    color: Colors.yellow,
                    /*    height: 700,
                    width: 600,

                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30)
                      )
                    ),*/

                    child: Wrap(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.wb_sunny_outlined),
                          title: const Text("Light Theme"),
                          onTap: () => {
                            Get.changeTheme(ThemeData.light()),
                          },
                        ),
                        ListTile(
                          tileColor: Colors.purple,
                          //selectedColor: Colors.red,
                          leading: const Icon(Icons.wb_sunny),
                          title: const Text("Dark Theme"),
                          onTap: () => {
                            Get.changeTheme(ThemeData.dark()),
                          },
                        ),
                      ],
                    ),
                  ),
                  barrierColor: Colors.red.withOpacity(0.5),
                  isDismissible: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(
                      color: Colors.white,
                      style: BorderStyle.solid,
                      width: 2,
                    ),
                  ),

                  //enableDrag: false,
                );
              },
              child: const Text("Bottom Sheet"),
            ),
          ],
        ),
      ),
    );
  }
}
