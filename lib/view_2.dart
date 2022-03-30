import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_complete/texting_getx.dart';



///  Build Widget run everytime when the state changed
///  used setState Method
///
///
///
///
class View2 extends StatefulWidget {
  View2({Key? key}) : super(key: key);

  @override
  State<View2> createState() => _View2State();
}

class _View2State extends State<View2> {
  //var student = Student();

  int count=0;


  @override
  void initState() {
        super.initState();
  }

  void Increment(){
    setState(() {
      count++;
    });

  }



  @override
  Widget build(BuildContext context) {
    print("---------------------Build Widget-----------------");
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
                  Text('Counter App: ${count}',
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 29,
                      fontWeight: FontWeight.w900,
                    ),
                  ),

                RaisedButton(
               onPressed: () {
                  Increment();
                 print("------------    Button Pressed  ---------------");

              },
              child: const Text("Counter"),
            ),





          ],
        ),
      ),
    );
  }
}
