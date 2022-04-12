import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_complete/Screens/home_screen.dart';

class Navigation1 extends StatelessWidget {
  Navigation1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text("Navigation"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              color: Colors.green,
              onPressed: () async {
                var data = await Get.to(
                  HomeScreen(),
                  transition: Transition.circularReveal,

                  // transition: Transition.zoom,
                  duration: Duration(milliseconds: 2000),
                  fullscreenDialog: true,
                  curve: Curves.bounceInOut,
                  arguments: "Data from Main Screen",
                );
                print("This is my Data ${data}");
              },
              child: const Text(
                "Go to Home",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
