import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text('Home Page',
            style: TextStyle(
              color: Colors.red,
              fontSize: 36,
              fontWeight: FontWeight.w900,
            ),
            ),
            RaisedButton(
              onPressed: () {
                Get.back(result: "This is my data");
              },
              child: const Text("Back to Main"),
            ),
            const SizedBox(height: 12,),
            Text("${Get.arguments}",
            style: const TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 18,
            ),
            ),

          ],
        ),
      ),
    );
  }
}
