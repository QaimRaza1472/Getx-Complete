
///   -------------------    Obx   --------------------------


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_complete/ObX/Controller/texting_getx.dart';
import '../Controller/my_controller.dart';



class View extends StatelessWidget {
   View({Key? key}) : super(key: key);

   //var student = Student();

   Student student = Get.put(Student());

   MyController myController=Get.put(MyController());





// 0139 790 220 1503

// Husnain Iqbal

   @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text("State Management"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Obx((){
                return Column(
                  children: [
                    Text(
                      'Student Name: ${student.name.value}',

                      //'Student Name: ${myController.my_student.value.name}',

                     style: const TextStyle(
                    color: Colors.red,
                    fontSize: 29,
                    fontWeight: FontWeight.w900,
                  ),
                  ),
                    Text('Age: ${student.age.value}',
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 36,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      height:350,
                     // color: Colors.yellow,
                      width:double.infinity,
                      child: ListView.builder(
                        itemCount:student.student_name.length,
                          itemBuilder: (context,index){
                            return
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Row(
                                    children: [
                                      const Text('Student Name: ',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w900,
                                      ),
                                       ),
                                      Text(
                                        '${student.student_name[index]}',
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 24,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                          }
                          ),
                    ),
                  ],
                );
          },
            ),
            ElevatedButton(
              onPressed: () {

                student.uper();

                //myController.convertToUpperCase();

                print("Pressed ${student.age.value}");

                },

              child: const Text("Upper"),
            ),
          ],
        ),
      ),
    );
  }
}
