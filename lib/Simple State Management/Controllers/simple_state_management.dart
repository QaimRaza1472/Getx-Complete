///  ------------------    Simple State Management      -------------------------
///
/// -------------------    GetBuilder<Any Controller>   --------------------------


//Feature
// Unique Id in GetBuilder

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_complete/Simple%20State%20Management/Controllers/simple_controller.dart';





class SimpleScreen extends StatelessWidget {
  SimpleScreen({Key? key}) : super(key: key);

  SimpleController myController = Get.put(SimpleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Simple State Management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<SimpleController>(builder: (controller) {
              return Text(
                'The Value is: ${controller.count}',
                style: const TextStyle(fontSize: 18),
              );
            }),

            const SizedBox(
              height: 15,
            ),
            GetBuilder<SimpleController>(
                id: "Hello",
                builder: (controller) {
              return Text(
                'The Value is: ${controller.count}',
                style: const TextStyle(fontSize: 18),
              );
            }),
            const SizedBox(
              height: 15,
            ),
            RaisedButton(
              padding: EdgeInsets.all(14),
              onPressed: () {
                myController.increment();
              },
              child: const Text(
                "Increment",
                style: TextStyle(
                  /// update the size of text
                  color: Colors.black,
                ),
              ),



            ),
          ],
        ),
      ),
    );
  }
}
