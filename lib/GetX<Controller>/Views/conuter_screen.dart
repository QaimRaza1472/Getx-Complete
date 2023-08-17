///  ------------------    Reactive State Management -------------------------
///
/// -------------------    Getx<Any Controller>      --------------------------

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controllers/counter_controller.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({Key? key}) : super(key: key);

  CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('State Management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetX<CounterController>(builder: (controller) {
              return Text(
                'The Value is: ${controller.count}',
                style: TextStyle(
                  fontSize: controller.selected.value == true ? 18 : 12,
                ),
              );
            }),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              //padding: EdgeInsets.all(14),
              onPressed: () {
                controller.increment();
              },
              child: Text(
                "Increment",
                style: TextStyle(

                    /// update the size of text
                    color: controller.selected.value == true
                        ? Colors.red
                        : Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
