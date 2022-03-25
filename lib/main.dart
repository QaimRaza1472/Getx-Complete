import 'package:flutter/material.dart';
import 'package:getx_complete/Features/testing_share.dart';
import 'Features/show_dialog.dart';
import 'Features/showing_snackbar.dart';
import 'package:get/get.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      //home:  MySnackBar(),
      home: ShowDialog1(),
    );
  }
}

