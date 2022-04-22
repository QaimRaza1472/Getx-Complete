import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'localization_controller.dart';





class LocalizationScreen extends StatelessWidget {
  LocalizationScreen({Key? key}) : super(key: key);

  MyLanguage myLanguage = Get.put(MyLanguage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'hello'.tr,
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                ),
              ),
              Text(
                'how_are_you'.tr,
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              RaisedButton(
                onPressed: () {
                  myLanguage.changeLanguage('en', 'US');
                },
                child: const Text('English'),
              ),
              const SizedBox(
                height: 12,
              ),
              RaisedButton(
                onPressed: () {
                  myLanguage.changeLanguage('fr', 'FR');
                },
                child: const Text('French'),
              ),
              const SizedBox(
                height: 12,
              ),
              RaisedButton(
                onPressed: () {
                  myLanguage.changeLanguage('ur', 'PK');
                },
                child: const Text('Urdu'),
              ),
              const SizedBox(
                height: 12,
              ),

              RaisedButton(
                onPressed: () {
                  myLanguage.changeLanguage('hi', 'IN');
                },
                child: const Text('Hindi'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
