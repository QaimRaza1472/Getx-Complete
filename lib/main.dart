import 'package:flutter/material.dart';
import 'package:getx_complete/Features/Internationalization/Messages.dart';
import 'package:getx_complete/Features/bottom_sheet.dart';
import 'package:getx_complete/Features/testing_share.dart';
import 'package:getx_complete/ObX/Views/view.dart';
import 'package:getx_complete/view_2.dart';
import 'Features/Internationalization/localization_screen.dart';
import 'Features/routing.dart';
import 'Features/show_dialog.dart';
import 'Features/showing_snackbar.dart';
import 'package:get/get.dart';
import 'GetX<Controller>/Views/conuter_screen.dart';
import 'Getx Project/ApiModule/api_service.dart';
import 'Getx Project/Views/product_list_view.dart';
import 'Screens/home_screen.dart';
import 'Simple State Management/Controllers/simple_state_management.dart';




void main() {
  //ApiServices.fetchProducts();
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX Complete',
      translations: Messages(),    //Our Translations
      locale: const Locale('en','US'),   //Default locale //to get device locale Get.deviceLocale
      fallbackLocale: const Locale('en','US'), //fallback locale if wrong locale found
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),



      //home:  MySnackBar(),
      //home: ShowDialog1(),
      //home: BottomSheet1(),
      //home: Navigation1(),

      //home: View(),
      // home: View2(),
        //home: CounterScreen(),

      // home: SimpleScreen(),

        //home:HomeScreen(),

      // home: LocalizationScreen(),

      home: ProductListView(),


    );
  }
}
